tests
testEcho
	env logger showStdOut.
	mike echo: 'Hello'.
	mike echo: 'Bye'.
	mike runOn: env
	