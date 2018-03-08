tests-execution
testExecuteWithDependencyAlreadyDoneDoesNotReexecuteDependency

	dependency execute.
	task execute.
	self assert: dependencyCount equals: 1.