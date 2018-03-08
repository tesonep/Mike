tests-execution
testInvalidateDependencyExecutionProvokesNewTaskExecution

	task execute.
	dependency invalidate.
	task execute.
	
	self assert: count equals: 2.