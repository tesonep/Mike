tests-execution
testInvalidateExecutionProvokesNewExecution

	task
		execute;
		execute;
		invalidate;
		execute;
		execute.
	self assert: count equals: 2.