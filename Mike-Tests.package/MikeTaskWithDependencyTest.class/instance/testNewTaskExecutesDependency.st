tests-execution
testNewTaskExecutesDependency

	task execute.
	self assert: dependencyCount equals: 1.