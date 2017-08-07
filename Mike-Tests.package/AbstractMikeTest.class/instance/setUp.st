running
setUp
	super setUp.
	mike := Mike new.
	env := MikeEnvironment on: 'testEnvironment'.
	env logger hideStdOut.
	env clean.