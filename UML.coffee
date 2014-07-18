class window.UMLClassDiagram
	# this list contains
	# - all the default window properties that are found by getClasses()
	# - UMLClassDiagram itself
	#
	# classe's name must be longer than 2 chars
	IGNORED_CLASSES = [
		"UMLClassDiagram",					"log"
		"reload",							"GetIsInstalled",
		"GetDetails",						"GetDetailsForFrame",
		"GetRunningState",					"getInstallState",
		"bound"

		# classes
		"Window",							"Location",
		"Object",							"SpeechSynthesis",
		"Storage",							"ApplicationCache",
		"DeprecatedStorageInfo",			"IDBFactory",
		"Crypto",							"CSS",
		"Performance",						"Console",
		"StyleMedia",						"Navigator",
		"BarProp",							"History",
		"Screen",							"Function",
		"HTMLDocument"
		"Number",							"String",
		"Array",							"Boolean"
		# from dagreD3
		"g",
		"__edges",							"_inEdges",
		"_nextId",							"_nodes",
		"_outEdges",						"_value"
		# from canvg
		"BlurStack",
		"stackBlurCanvasRGBA",				"stackBlurCanvasRGB"

		"header",							"mimeType",
		"responseType",						"response"
		"get",								"post"
		"send",								"abort"
		"on"
	]

	# CSS = (id) ->
	# 	return """##{id} {
	# 			overflow: hidden;
	# 			font-family: courier;
	# 		}

	# 		##{id} .node rect {
	# 			stroke: #333;
	# 			stroke-width: 1.5px;
	# 			fill: #fff;
	# 		}

	# 		##{id} .edgeLabel rect {
	# 			fill: #fff;
	# 		}

	# 		##{id} .edgePath {
	# 			stroke: #333;
	# 			stroke-width: 1.5px;
	# 			fill: none;
	# 		}"""

	################################################################################
	################################################################################

	constructor: (config) ->
		@config =
			attributes:		true
			methods:		true
			arguments:		true
			returnTypes:	true
			types:			true
			cardinalities:	true

		if config instanceof Object
			for key, val of config
				@config[key] = !!val

		# load scripts (jquery, d3..)

		[objects, classes]	= @getInfo()
		@classes			= (@getDataOfClass(clss) for clss in classes)
		@relations			= @getRelations()

		@svgId				= "__uml_svg"
		@canvasId			= "__uml_canvas"
		@svg				= $ "<svg id='#{@svgId}' width='10000' height='7000'><g /></svg>"
		$(document.body).append @svg

		@draw() # .createCSSStyle( CSS(@svgId) )


	# createCSSStyle: (cssStr) ->
	# 	style				= document.createElement('style')
	# 	style.type			= 'text/css'
	# 	style.innerHTML		= cssStr
	# 	document.head.appendChild(style)
	# 	# document.getElementById('someElementId').className = 'cssClass'
	# 	return @

	getType: (val) ->
		if val? and val.constructor?.name?
			if (type = val.constructor.name) is "Array"
				return @getTypeOfArray val
			return type
		
		# else
		return typeof val

	getTypeOfArray: (arr) ->
		if arr.length > 0
			prevType = @getType(arr[0])
			for elem in arr
				if @getType(elem) isnt prevType
					return "Mixed array"
			return "Array of #{prevType}"
		# else
		return "Array"

	parseArguments: (funcStr) ->
		# get rid of function body, "function" and whitespace
		signature = funcStr.slice( funcStr.indexOf("function") + 8, funcStr.indexOf("{") ).trim()
		# get rid of the round brackets
		return signature.slice( 1, signature.lastIndexOf(")", 1) )

	getDataOfClass: (clss) ->
		attributes = []
		methods = []

		# get an instance of this clss (= class)
		try
			obj = new clss()
		catch e
			return {
				name:		null
				attributes:	[]
				methods:	[]
				superClass:	null
			}

		# attributes, methods
		for key, val of obj
			if typeof val is "function"

				retType = null

				if @config.returnTypes is true
					try
						retType = @getType val()
					catch e
						console.log e


				if key not in ["__uml_init", "constructor"]
					methods.push {
						name: key
						returnType: retType
						arguments: if @config.arguments is true then @parseArguments val.toString() else []
					}
				# key == "__uml_init" => see whats being done
				else if key is "__uml_init"
					objs = val()
					res = []
					for k, v of objs
						attributes.push {
							name: k
							type: v.constructor.name
						}
			else
				attributes.push {
					name: key
					type: @getType val
				}

		return {
			name:		clss.name
			attributes:	if @config.attributes is true then attributes else []
			methods:	if @config.methods is true then methods else []
			superClass:	if not clss.__super__? then null else clss.__super__.constructor.name
		}

	getInfo: () ->
		objs = []
		classes = []

		inDOM = (obj) ->
			if typeof Node is "object"
				return obj instanceof Node

			return typeof obj is "object" and typeof obj.nodeType is "number" and typeof obj.nodeName is "string"

		getInfoRec = (obj) ->
			if inDOM obj
				return

			keys = Object.keys(obj) # get all own property names of the object

			for key in keys
				val = obj[key]
				if val?
					# if the value is a non-dom object and we don't have the reference yet
					if typeof val is "object" and val not in objs
						objs.push val
						getInfoRec val
					else if typeof val is "function"
						if (name = val.name)? and name.length? and name.length > 2 and name not in IGNORED_CLASSES and val not in classes
							classes.push val
						else if (name = (ctor = val.constructor).name)? and name isnt "" and name not in IGNORED_CLASSES
							classes.push ctor

		getInfoRec window

		return [objs, classes]

	getRelations: () ->
		if @classes?
			classNames = (clss.name for clss in @classes)
			relations = {}

			for clss in @classes
				relations[clss.name] = {}
				types = relations[clss.name]

				# find out what kind of reference is used how often
				for attr in clss.attributes
					# {name, type}
					attrType = attr.type

					# it's a reference to another class!
					if attrType in classNames
						if not types[attrType]?
							types[attrType] = 1
						else
							types[attrType]++
					# attrType is "Array of ..."
					else if attrType.substr(0, 8) is "Array of"
						if (attrType = attrType.substring(9)) not in IGNORED_CLASSES
							types[attrType] = Infinity

			# 2-directional relations
			return relations
		return {}

	generateLabel: (cardinality) ->
		return "#{if cardinality is Infinity then "*" else cardinality}"

	getClassByName: (clssName) ->
		for clss in @classes when clss.name is clssName
				return clss
		return null

	isInheritance: (source, target) ->
		return @getClassByName(source).superClass is target

	# dagre(D3)
	draw: () ->
		# Create a new directed graph
		g = new dagre.Digraph()

		# add nodes
		# first argument is the node id. The second is metadata about the node.
		for clss in @classes

			if not clss.name?
				continue

			label = []
			line = ""
			sep = "__"

			item = "#{clss.name}"
			label.push item
			maxChars = item.length
			label.push sep

			if @config.attributes is true
				for attribute in clss.attributes
					if @config.types is true
						item = "#{attribute.name} : #{attribute.type}"
					else
						item = "#{attribute.name}"
					label.push item
					maxChars = if maxChars > item.length then maxChars else item.length

			label.push sep, "\n"

			if @config.methods is true
				for method in clss.methods
					if @config.returnTypes is true
						item = "#{method.name}(#{if @config.arguments is true then method.arguments else ""}) : #{method.returnType}"
					else
						item = "#{method.name}(#{if @config.arguments is true then method.arguments else ""})"
					label.push item
					maxChars = if maxChars > item.length then maxChars else item.length

			# create line with correct length
			line += "_" for i in [0..maxChars]

			# put line at according positions
			for item, i in label when item is sep
				label[i] = line

			label = label.join "\n"

			g.addNode clss.name, { label: label }

		# connect nodes with edges
		for clssName, edge of @relations
			for to, count of edge
				try
					if @config.cardinalities is true
						g.addEdge null, clssName, to, { label: "#{@generateLabel(count)}" }
					else
						g.addEdge null, clssName, to
				catch e
					console.log e
			# for merged relations:
			# g.addEdge null, edge.from, edge.to, { label: @generateLabel(edge) }

		# connect super and sub classes
		for clss in @classes when clss.superClass?
			try
				g.addEdge null, clss.name, clss.superClass, { inheritance: true }
			catch e
				console.log e

		# Add edges to the graph. The first argument is the edge id. Here we use null
		# to indicate that an arbitrary edge id can be assigned automatically. The
		# second argument is the source of the edge. The third argument is the target
		# of the edge. The last argument is the edge metadata.

		renderer = new dagreD3.Renderer()

		# this actually returns this 'private' function _drawNodes() if no arguments are given
		# oldDrawNodes = renderer.drawNodes()
		# renderer.drawNodes (graph, svg) ->
		# 	svgNodes = oldDrawNodes(graph, svg)
		# 	return svgNodes


		svg = d3.select("##{@svgId} g")

		renderer
			.layout dagreD3.layout().rankDir("BT")
			.run g, svg

		# inline style
		# @svg.prepend "<style type='text/css'>\n<![CDATA[\n#{do CSS2}\n]]>\n</style>"

		# add marker for inheritance
		defs = d3.select("defs")
		console.log defs
		defs.html defs.html() + "<marker id='subclass' viewBox='0 0 10 10' refX='8' refY='5' markerUnits='strokeWidth' markerWidth='10' markerHeight='10' orient='auto' style='fill: #fff' stroke='#000' stroke-width='1'><path d='M 0 0 L 10 5 L 0 10 z' /></marker>"

		idx = 0
		for key, edge of g._edges
			# edge.id, .u, .v, .value
			if @isInheritance(edge.u, edge.v) or @isInheritance(edge.v, edge.u)
				@svg
					.find ".edgePath"
					.eq idx
					.find "path"
					.attr "marker-end", "url(#subclass)"

			idx++

		# inline style
		@svg.css {
			"overflow": "hidden"
			"font-family": "courier"
		}
		@svg.find(".node rect").css {
			"stroke": "#333"
			"stroke-width": "1.5px"
			"fill": "#fff"
		}
		@svg.find(".edgeLabel rect").css {
			"fill": "#fff"
		}
		@svg.find(".edgePath").css {
			"stroke": "#333"
			"stroke-width": "1.5px"
			"fill": "none"
		}

		# adjust svg width and heigt and its position
		# TODO....

		return @

	export: () ->
		if XMLSerializer?
			# add canvas to DOM
			@canvas = $ "<canvas id='#{@canvasId}' />"
			$(document.body).append @canvas

			xml = new XMLSerializer()

			svgString = xml.serializeToString @svg[0]

			# load a svg snippet in the canvas with id = "drawingArea"
			canvg @canvasId, svgString, { ignoreMouse: true, ignoreAnimation: true }

		return @