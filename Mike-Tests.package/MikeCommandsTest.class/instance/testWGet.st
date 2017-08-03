tests
testWGet
	mike wget: 'http://get.pharo.org/vm'.
	mike runOn: env.
	
	self assertExistsFile: 'vm'.
	