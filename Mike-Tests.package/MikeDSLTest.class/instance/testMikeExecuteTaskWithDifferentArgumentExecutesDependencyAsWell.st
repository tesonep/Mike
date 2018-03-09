tests
testMikeExecuteTaskWithDifferentArgumentExecutesDependencyAsWell

	build mainWithArg: 1.
	build mainWithArg: 2.

	self assert: self dependencyCount equals: 2