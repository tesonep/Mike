tests
testMikeExecuteTaskWithArgumentExecutesDependencies

	build mainWithArg: 1.
	self assert: self dependencyCount equals: 1