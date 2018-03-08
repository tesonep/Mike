tests
testMikeExecuteTaskWithArgumentExecutesDependencies

	build executeTask: #mainWithArg: withArguments: {1}.
	self assert: self dependencyCount equals: 1