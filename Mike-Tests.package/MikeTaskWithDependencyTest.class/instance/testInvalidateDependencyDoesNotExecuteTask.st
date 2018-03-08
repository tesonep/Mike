tests-execution
testInvalidateDependencyDoesNotExecuteTask

	dependency invalidate.
	self assert: count equals: 0.