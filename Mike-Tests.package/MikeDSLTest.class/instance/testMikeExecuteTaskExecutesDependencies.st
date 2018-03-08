tests
testMikeExecuteTaskExecutesDependencies

	build executeTask: #main.
	self assert: self dependencyCount equals: 1