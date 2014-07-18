window.App = {}


class window.ATest
	@static: () ->
		NS.b()
		return 5

	constructor: (a = 2) ->
		@a = a
		@ar = [1, 2]
		@doA()
		@static = ATest.static()

	doA: (x) ->
		return NS.a() or x or 2



class window.App.BTest
	constructor: () ->
		@b = 3
		@a = new ATest()
		@ar = [true, false]
		@mixed = [3, "a"]
		@arrayOfA = [new ATest(), new ATest()]
		@stringAr = ["asdf", "bsfd"]

	# this function is for declaring dircular references without getting in trouble
	# list what objects are added elsewhere in real execution
	__uml_init: () ->
		{
			c: new CTest()
		}

	doB: (a, b , c) ->
		# return 3
		temp = @doB2()
		return new ATest(temp)

	doB2: () ->
		return 42

class window.CTest
	constructor: () ->
		@c = 3
		@a = new ATest()
		@b = new App.BTest()

	doC: (a, b) ->
		return 3


class window.ASub extends ATest
	constructor: () ->
		@sub = 42
		@b = new App.BTest()

class window.App.ASubSub extends ASub
	constructor: () ->
		@subsub = 42
		@b = new App.BTest()
