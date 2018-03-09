tests
testMikeExecuteTaskExecutesDependencies

	build main.
	self assert: self dependencyCount equals: 1