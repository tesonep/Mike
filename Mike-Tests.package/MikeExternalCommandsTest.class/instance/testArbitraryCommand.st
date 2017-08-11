tests
testArbitraryCommand
	mike sh: 'ls > out.txt'.
	mike runOn: env.
	
	self assertExistsFile: 'out.txt'.
	