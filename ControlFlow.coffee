class window.ControlFlowDiagram
	IGNORED_GLOBAL_KEYS = [
		# "window"
		"top"
		"dagre"
		# "Digraph"
		"dagreD3"
		"d3"
		# "$"
		# "document.createDocumentFragment"
		# "document.createElement"
		# "removeEventListener"
	]
	IGNORED_FUNCTIONS = [
		"Window.$"
		"Window.RGBColor"
		"Window.stackBlurImage"
		"Window.stackBlurCanvasRGBA"
		"Window.stackBlurCanvasRGB"
		"Window.BlurStack"
		"Window.canvg"
		"Window.UMLClassDiagram"
		"Window.ControlFlowDiagram"

		"$"
		"document.createDocumentFragment"
		"document.createElement"
		"removeEventListener"

		# "window.dagre.Digraph"
		# "window.dagreD3.Renderer"

		# "Window.postMessage"
		# "Window.close"
		# "Window.blur"
		# "Window.focus"
		# "Window.getSelection"
		# "Window.print"
		# "Window.stop"
		# "Window.open"
		# "Window.showModalDialog"
		# "Window.alert"
		# "Window.confirm"
		# "Window.prompt"
		# "Window.find"
		# "Window.scrollBy"
		# "Window.scrollTo"
		# "Window.scroll"
		# "Window.moveBy"
		# "Window.moveTo"
		# "Window.resizeBy"
		# "Window.resizeTo"
		# "Window.matchMedia"
		# "Window.getComputedStyle"
		# "Window.getMatchedCSSRules"
		# "Window.webkitConvertPointFromPageToNode"
		# "Window.webkitConvertPointFromNodeToPage"
		# "Window.requestAnimationFrame"
		# "Window.cancelAnimationFrame"
		# "Window.webkitRequestAnimationFrame"
		# "Window.webkitCancelAnimationFrame"
		# "Window.webkitCancelRequestAnimationFrame"
		# "Window.captureEvents"
		# "Window.releaseEvents"
		# "Window.atob"
		# "Window.btoa"
		# "Window.setTimeout"
		# "Window.clearTimeout"
		# "Window.setInterval"
		# "Window.clearInterval"
		# "Window.webkitRequestFileSystem"
		# "Window.webkitResolveLocalFileSystemURL"
		# "Window.openDatabase"
		# "Window.addEventListener"
		# "Window.removeEventListener"
		# "Window.dispatchEvent"
		# "Location.replace"
		# "Location.assign"
		# "Location.reload"
		# "DOMStringList.item"
		# "DOMStringList.contains"
		# "Object.AddSearchProvider"
		# "Object.IsSearchProviderInstalled"
		# "Object.loadTimes"
		# "Object.csi"
		# "Object.getIsInstalled"
		# "Object.getDetails"
		# "Object.getDetailsForFrame"
		# "Object.runningState"
		# "Object.installState"
		# "Object.install"
		# "Event.addListener"
		# "Event.removeListener"
		# "Event.hasListener"
		# "Event.hasListeners"
		# "Event.dispatchToListener"
		# "Event.dispatch"
		# "Event.addRules"
		# "Event.removeRules"
		# "Event.getRules"
		# "HTMLDocument.open"
		# "HTMLDocument.close"
		# "HTMLDocument.write"
		# "HTMLDocument.writeln"
		# "HTMLDocument.clear"
		# "HTMLDocument.captureEvents"
		# "HTMLDocument.releaseEvents"
		# "HTMLDocument.createElement"
		# "HTMLDocument.createDocumentFragment"
		# "HTMLDocument.createTextNode"
		# "HTMLDocument.createComment"
		# "HTMLDocument.createCDATASection"
		# "HTMLDocument.createProcessingInstruction"
		# "HTMLDocument.createAttribute"
		# "HTMLDocument.getElementsByTagName"
		# "HTMLDocument.importNode"
		# "HTMLDocument.createElementNS"
		# "HTMLDocument.createAttributeNS"
		# "HTMLDocument.getElementsByTagNameNS"
		# "HTMLDocument.getElementById"
		# "HTMLDocument.adoptNode"
		# "HTMLDocument.createEvent"
		# "HTMLDocument.createRange"
		# "HTMLDocument.createNodeIterator"
		# "HTMLDocument.createTreeWalker"
		# "HTMLDocument.getOverrideStyle"
		# "HTMLDocument.execCommand"
		# "HTMLDocument.queryCommandEnabled"
		# "HTMLDocument.queryCommandIndeterm"
		# "HTMLDocument.queryCommandState"
		# "HTMLDocument.queryCommandSupported"
		# "HTMLDocument.queryCommandValue"
		# "HTMLDocument.getElementsByName"
		# "HTMLDocument.elementFromPoint"
		# "HTMLDocument.caretRangeFromPoint"
		# "HTMLDocument.getSelection"
		# "HTMLDocument.getCSSCanvasContext"
		# "HTMLDocument.getElementsByClassName"
		# "HTMLDocument.hasFocus"
		# "HTMLDocument.querySelector"
		# "HTMLDocument.querySelectorAll"
		# "HTMLDocument.webkitExitPointerLock"
		# "HTMLDocument.registerElement"
		# "HTMLDocument.webkitCancelFullScreen"
		# "HTMLDocument.webkitExitFullscreen"
		# "HTMLDocument.createExpression"
		# "HTMLDocument.createNSResolver"
		# "HTMLDocument.evaluate"
		# "HTMLDocument.insertBefore"
		# "HTMLDocument.replaceChild"
		# "HTMLDocument.removeChild"
		# "HTMLDocument.appendChild"
		# "HTMLDocument.hasChildNodes"
		# "HTMLDocument.cloneNode"
		# "HTMLDocument.normalize"
		# "HTMLDocument.isSameNode"
		# "HTMLDocument.isEqualNode"
		# "HTMLDocument.lookupPrefix"
		# "HTMLDocument.isDefaultNamespace"
		# "HTMLDocument.lookupNamespaceURI"
		# "HTMLDocument.compareDocumentPosition"
		# "HTMLDocument.contains"
		# "Object.ascending"
		# "Object.descending"
		# "Object.min"
		# "Object.max"
		# "Object.extent"
		# "Object.sum"
		# "Object.mean"
		# "Object.quantile"
		# "Object.median"
		# "Object.bisectLeft"
		# "Object.bisectRight"
		# "Object.bisector"
		# "Object.shuffle"
		# "Object.permute"
		# "Object.pairs"
		# "Object.zip"
		# "Object.transpose"
		# "Object.keys"
		# "Object.values"
		# "Object.entries"
		# "Object.merge"
		# "Object.range"
		# "Object.map"
		# "Object.nest"
		# "Object.set"
		# "Object.rebind"
		# "Object.dispatch"
		# "Object.requote"
		# "Object.selection"
		# "Object.select"
		# "Object.selectAll"
		# "Object.mouse"
		# "Object.touches"
		# "Object.interpolateZoom"
		# "Object.hsl"
		# "Object.hcl"
		# "Object.lab"
		# "Object.rgb"
		# "Object.functor"
		# "Object.xhr"
		# "Object.dsv"
		# "Object.csv"
		# "Object.tsv"
		# "Object.touch"
		# "Object.timer"
		# "Object.round"
		# "Object.formatPrefix"
		# "Object.locale"
		# "Object.format"
		# "Object.interpolateRgb"
		# "Object.interpolateObject"
		# "Object.interpolateNumber"
		# "Object.interpolateString"
		# "Object.interpolate"
		# "Object.interpolateArray"
		# "Object.ease"
		# "Object.interpolateHcl"
		# "Object.interpolateHsl"
		# "Object.interpolateLab"
		# "Object.interpolateRound"
		# "Object.transform"
		# "Object.interpolateTransform"
		# "Object.transition"
		# "Object.text"
		# "Object.json"
		# "Object.html"
		# "Object.xml"
		# "Object.drag"
		# "Object.zoom"
		# "Object.qualify"
		# "Object.year"
		# "Object.years"
		# "Object.day"
		# "Object.days"
		# "Object.dayOfYear"
		# "Object.sunday"
		# "Object.sundays"
		# "Object.sundayOfYear"
		# "Object.monday"
		# "Object.mondays"
		# "Object.mondayOfYear"
		# "Object.tuesday"
		# "Object.tuesdays"
		# "Object.tuesdayOfYear"
		# "Object.wednesday"
		# "Object.wednesdays"
		# "Object.wednesdayOfYear"
		# "Object.thursday"
		# "Object.thursdays"
		# "Object.thursdayOfYear"
		# "Object.friday"
		# "Object.fridays"
		# "Object.fridayOfYear"
		# "Object.saturday"
		# "Object.saturdays"
		# "Object.saturdayOfYear"
		# "Object.format"
		# "Object.second"
		# "Object.seconds"
		# "Object.minute"
		# "Object.minutes"
		# "Object.hour"
		# "Object.hours"
		# "Object.month"
		# "Object.months"
		# "Object.scale"
		# "Object.stream"
		# "Object.area"
		# "Object.bounds"
		# "Object.centroid"
		# "Object.clipExtent"
		# "Object.conicEqualArea"
		# "Object.albers"
		# "Object.albersUsa"
		# "Object.path"
		# "Object.transform"
		# "Object.projection"
		# "Object.projectionMutator"
		# "Object.equirectangular"
		# "Object.rotation"
		# "Object.circle"
		# "Object.distance"
		# "Object.graticule"
		# "Object.greatArc"
		# "Object.interpolate"
		# "Object.length"
		# "Object.azimuthalEqualArea"
		# "Object.azimuthalEquidistant"
		# "Object.conicConformal"
		# "Object.conicEquidistant"
		# "Object.gnomonic"
		# "Object.mercator"
		# "Object.orthographic"
		# "Object.stereographic"
		# "Object.transverseMercator"
		# "Object.hull"
		# "Object.polygon"
		# "Object.voronoi"
		# "Object.delaunay"
		# "Object.quadtree"
		# "Object.bundle"
		# "Object.chord"
		# "Object.force"
		# "Object.hierarchy"
		# "Object.partition"
		# "Object.pie"
		# "Object.stack"
		# "Object.histogram"
		# "Object.pack"
		# "Object.tree"
		# "Object.cluster"
		# "Object.treemap"
		# "Object.normal"
		# "Object.logNormal"
		# "Object.bates"
		# "Object.irwinHall"
		# "Object.linear"
		# "Object.log"
		# "Object.pow"
		# "Object.sqrt"
		# "Object.ordinal"
		# "Object.category10"
		# "Object.category20"
		# "Object.category20b"
		# "Object.category20c"
		# "Object.quantile"
		# "Object.quantize"
		# "Object.threshold"
		# "Object.identity"
		# "Object.arc"
		# "Object.line"
		# "Object.area"
		# "Object.chord"
		# "Object.diagonal"
		# "Object.symbol"
		# "Object.axis"
		# "Object.brush"
		# "Object.Digraph"
		# "Object.Renderer"
		# "Object.layout"
		# "Object.decode"
		# "Object.encode"
		# "Object.Digraph"
		# "Object.Graph"
		# "Object.layout"
	]
	IGNORED_CLASSES = [
		"ControlFlowDiagram"
		"RGBColor"
		"stackBlurImage"

		"UMLClassDiagram",	#				"log"
		# "reload",							"GetIsInstalled",
		# "GetDetails",						"GetDetailsForFrame",
		# "GetRunningState",					"getInstallState",
		# "bound"

		# classes
		# "Window",							"Location",
		# "Object",							"SpeechSynthesis",
		# "Storage",							"ApplicationCache",
		# "DeprecatedStorageInfo",			"IDBFactory",
		# "Crypto",							"CSS",
		# "Performance",						"Console",
		# "StyleMedia",						"Navigator",
		# "BarProp",							"History",
		# "Screen",							"Function",
		# "HTMLDocument"
		# "Number",							"String",
		# "Array",							"Boolean"
		# from dagreD3
		"g",
		# "__edges",							"_inEdges",
		# "_nextId",							"_nodes",
		# "_outEdges",						"_value"
		# from canvg
		"BlurStack",
		"stackBlurCanvasRGBA",				"stackBlurCanvasRGB"

		# "header",							"mimeType",
		# "responseType",						"response"
		# "get",								"post"
		# "send",								"abort"
		# "on"
	]

	CSS = (id) ->
		return """##{id} {
				overflow: hidden;
				font-family: courier;
			}

			##{id} .node rect {
				stroke: #333;
				stroke-width: 1.5px;
				/*fill: #fff;*/
			}

			##{id} .edgeLabel rect {
				fill: #fff;
			}

			##{id} .edgePath {
				stroke: #333;
				stroke-width: 1.5px;
				fill: none;
			}"""

	constructor: (config) ->
		@config =
			drawAfterCalls: 10000
			drawAfterTime: 3000 # milliseconds

		@listening	= true
		@calls		= 0 # increments till it reaches @config.drawAfterCalls or listening is stopped 
		@nodes		= []
		@objs		= []
		@scopes		= []
		# @scopes = {} # will map objects' scopes to themselves
		
		@svgId		= "__ControlFlow_svg"
		# @canvasId	= "__ControlFlow_canvas"
		@svg		= $ "<svg id='#{@svgId}' width='10000' height='7000'><g /></svg>"
		$(document).ready () =>
			$(document.body).append @svg
			@createCSSStyle CSS(@svgId)

		@start = Date.now()
		@decorateFunctions()

		window.__ControlFlow_obj = @

	# check: () ->
	# 	console.log "checking"
	# 	self = @
	# 	# nothing has happened for a "long" time
	# 	if Date.now() - @lastCall > (@config.checkInterval - 50)
	# 		window.clearInterval @interval
	# 		@draw()
	# 	else
	# 		# first time => set interval
	# 		if @interval is null
	# 			@interval = window.setInterval(
	# 				do (self) ->
	# 					return () ->
	# 						self.check()
	# 				@config.checkInterval
	# 			)
	# 		# else => keep checking

	createCSSStyle: (cssStr) ->
		style				= document.createElement('style')
		style.type			= 'text/css'
		style.innerHTML		= cssStr
		document.head.appendChild(style)
		# document.getElementById('someElementId').className = 'cssClass'
		return @

	makeNode = (n = "", ref = null, p = [], c = []) ->
		return {
			name:		n
			funcRef:	ref
			parents:	p
			children:	c
			calls:		1
			visited:	false
		}

	getNode: (funcRef) ->
		for node in @nodes when node.funcRef is funcRef
			return node
		return null

	addNode: (node) ->
		@nodes.push node
		return @

	getInfo: () ->
		objs = []
		scopes = []
		classes = []
		visited = []

		inDOM = (obj) ->
			if typeof Node is "object"
				return obj instanceof Node

			return typeof obj is "object" and typeof obj.nodeType is "number" and typeof obj.nodeName is "string"

		getInfoRec = (scope, obj, scopeName) ->
			if inDOM obj
				return

			keys = Object.keys(obj) # get all own property names of the object

			for key in keys when key not in IGNORED_GLOBAL_KEYS and isNaN key
				# console.log key
				if (val = obj[key])?
					# if the value is a non-dom object and we don't have the reference yet
					if typeof val is "object" and val not in objs
						objs.push val
						scopes.push "#{scopeName}.#{key}"
						getInfoRec obj, val, "#{scopeName}.#{key}"
					else if typeof val is "function"
						if (name = val.name)? and name.length? and name.length > 2 and name not in IGNORED_CLASSES and val not in visited
							classes.push {ctor: val, scope: scope}
							visited.push val
						# else if (name = (ctor = val.constructor).name)? and name isnt "" and name not in IGNORED_CLASSES
						# 	console.log "class by constructor name", ctor
						# 	classes.push ctor

		getInfoRec window, window, ""

		# remove ".window." from all scope names (caused by how the recursion concats the scope names)
		for scope, i in scopes
			scopes[i] = scope.slice 8


		return [objs, classes, scopes]

	# duplicate
	parseArguments: (funcStr) ->
		# get rid of function body, "function" and whitespace
		signature = funcStr.slice( funcStr.indexOf("("), funcStr.indexOf("{") ).trim()
		# get rid of the round brackets
		return signature.slice( 1, signature.lastIndexOf(")", 1) )
	
	# funName is an arbitrary name of the functions thats currently being executed
	# currentFunc is a reference to the function that's currently being executed
	# callingFunc is a reference to the function that called the current function
	registerCall: (funName, currentFunc, callingFunc) ->
		helper = (funName, currentFunc, callingFunc) =>
			node		= @getNode currentFunc
			parentNode	= @getNode callingFunc
			# console.log node, parentNode
			# current function is already in the graph
			if node?
				node.calls++
				# we know: parentNode already exists because it triggered the current function (except the 1st node)

				# node is already a child of parentNode => parentNode is also already a parent of node
				# => node and parentNode are already connected
				# otherwise: connect node and parentNode -> new path will be created in the graph
				if parentNode? and node not in parentNode.children
					parentNode.children.push node
					node.parents.push parentNode

			# current function is called for the first time
			else
				# console.log "adding node..."
				newNode = makeNode funName, currentFunc
				@addNode newNode
				if parentNode?
					newNode.parents.push parentNode
					parentNode.children.push newNode

			return @

		if @listening is true
			# supposed to be listening
			if @calls++ < @config.drawAfterCalls and Date.now() - @start < @config.drawAfterTime
				return helper(funName, currentFunc, callingFunc)
			
			# else
			@listening = false
			return @draw()				

	decorateFunctions: () ->
		[objs, classes, scopes] = @getInfo() # classes are (constructor) functions!
		@objs	= objs
		@scopes	= scopes

		visited = []
		self = @

		classNames = (clss.ctor.name for clss in classes)

		for obj in objs
			for key, val of obj
				# skip functions (probably in window) that are constructors
				if key in classNames
					continue

				if typeof val is "function" and val not in visited
					visited.push val
					# if obj.constructor?.name?
					# 	funName = "#{obj.constructor.name}.#{key}"
					# else
					# 	funName = "#{key}"
					scopeName	= @scopes[@objs.indexOf obj]
					if scopeName isnt ""
						funName	= "#{scopeName}.#{key}"
					else
						funName	= key

					if funName in IGNORED_FUNCTIONS
						continue

					# console.log funName

					org = val

					obj[key] = do (funName, org) ->
						return () ->
							# console.log "wrapper - kind: normal", funName
							self.registerCall funName, org, arguments.callee.caller
							return org.apply(@, arguments)

		# modify classes: constructors and methods (in prototype)
		for item, i in classes
			ctor	= item.ctor
			scope	= item.scope

			# modify instance methods
			for methodName, orgMethod of ctor.prototype when methodName isnt "constructor"
				funName = "#{ctor.name}.#{methodName}"
				# console.log funName
				ctor.prototype[methodName] = do (funName, orgMethod) ->
					return () ->
						# console.log "wrapper - kind: instance", funName
						self.registerCall funName, orgMethod, arguments.callee.caller
						# self.registerCall funName, arguments.callee, arguments.callee.caller.arguments.callee.caller
						return orgMethod.apply(@, arguments)


			# modify constructor (= a named function => this is special)
			funName = "new #{ctor.name}()"

			org = ctor

			classes[i] = do (funName, ctor, scope) ->
				funcStr = ctor.toString()
				code = """return function #{ctor.name}(#{self.parseArguments(funcStr)}) {
					// console.log("wrapper - kind: constructor", "#{funName}");
					__ControlFlow_obj.registerCall("#{funName}", ctor, arguments.callee.caller);
					ctor.apply(this, arguments);
				}"""
				# create named function with dynamic name (from string)
				fun = (new Function("ctor", code))(ctor)
				
				# modify static class methods
				for methodName, orgMethod of ctor when methodName isnt "__super__"
					funName = "#{ctor.name}::#{methodName}"
					# add the wrapped static method of ctor to fun (which is the "new ctor")
					fun[methodName] = do (funName, orgMethod) ->
						return () ->
							# console.log "wrapper - kind: instance", funName
							self.registerCall funName, orgMethod, arguments.callee.caller
							# self.registerCall funName, arguments.callee, arguments.callee.caller.arguments.callee.caller
							return orgMethod.apply(@, arguments)

				prot = ctor.prototype
				prot.constructor = fun # make sure the constructor also becomes the correct function

				# replace constructor in its scope
				scope[ctor.name] = fun
				scope[ctor.name].prototype = prot

				return fun

		return @

	getColorForNode: (calls) ->
		n = Math.round (calls / @calls) * 255
		return "rgb(255,#{255 - n},#{255 - n})"

	draw: () ->
		self = @
		console.log "drawing", @listening
		# Create a new directed graph
		g = new dagre.Digraph()

		
		# mark all nodes an unvisited
		for node in @nodes
			node.visited = false

		addedEgdes = []
		edgesToAdd = []

		makeGraph = (node) =>
			# if node was not visited yet add it to the graph
			if node.visited is false
				g.addNode node.name, { label: node.name, color: @getColorForNode(node.calls) }
				node.visited = true

			# go to ALL children (whether they've been visited or not) if the edge between node and the according child has not been added yet
			for child in node.children when (edgeName = node.name + child.name) not in addedEgdes
				makeGraph child
				# g.addEdge null, node.name, child.name
				edgesToAdd.push node.name, child.name # mark as to be added
				addedEgdes.push edgeName

		# add nodes to graph
		for node in @nodes
			makeGraph node

		# add edges to graph
		for edge, i in edgesToAdd by 2
			g.addEdge null, edge, edgesToAdd[i + 1]

		console.log g

		renderer = new dagreD3.Renderer()

		# custom draw function => enable coloring
		oldDrawNodes = renderer.drawNodes()
		renderer.drawNodes (graph, svg) ->
			svgNodes = oldDrawNodes(graph, svg)
			for svgNode in svgNodes[0]
				rect = d3
						.select svgNode
						.select "rect"
				rect.attr "fill", graph._nodes[svgNode.__data__].value.color
				# console.log svgNode.__data__, graph._nodes[svgNode.__data__].value.color
				# console.log svgNode
				# svgNode.fill = graph._nodes[svgNode.__data__].value.color

			console.log svgNodes
			return svgNodes

		svg = d3.select("##{@svgId} g")

		renderer
			.layout dagreD3.layout().rankDir("LR")
			.run g, svg

		# # inline style
		# @svg.css {
		# 	"overflow": "hidden"
		# 	"font-family": "courier"
		# }
		# @svg.find(".node rect").css {
		# 	"stroke": "#333"
		# 	"stroke-width": "1.5px"
		# 	"fill": "#fff"
		# }
		# @svg.find(".edgeLabel rect").css {
		# 	"fill": "#fff"
		# }
		# @svg.find(".edgePath").css {
		# 	"stroke": "#333"
		# 	"stroke-width": "1.5px"
		# 	"fill": "none"
		# }

		# adjust svg width and heigt and its position
		# TODO....

		return @