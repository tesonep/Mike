tests
testMikeExecuteTaskWithDifferentArgumentExecutesDependencyAsWell

	build executeTask: #mainWithArg: withArguments: {1}.
	build executeTask: #mainWithArg: withArguments: {2}.
	self assert: self dependencyCount equals: 2