tests-execution
testInvalidateExecutionDoesNotProvokeNewDependencyExecution

	task
		execute;
		execute;
		invalidate;
		execute;
		execute.
	self assert: dependencyCount equals: 1.