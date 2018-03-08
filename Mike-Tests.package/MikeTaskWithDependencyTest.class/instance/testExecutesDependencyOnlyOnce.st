tests-execution
testExecutesDependencyOnlyOnce

	task execute; execute; execute.
	self assert: dependencyCount equals: 1.