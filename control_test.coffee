window.NS = {
	a: () ->
		# debugger
		return NS.b() + 2
	b : () ->
		return 4
}


window.someFunction = (a, b) ->
	return (2*a + b) + "asdf"


window.init = () ->

	inner = () ->
		return 2+2

	console.log ATest.static()

	console.log b + inner()
	a = new ATest(42)

	console.log a

	console.log (b = a.doA())

	return

new ControlFlowDiagram()