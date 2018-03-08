tests-execution
testInvalidateDependencyExecutionProvokesNewDependencyExecution

	task execute.
	dependency invalidate.
	task execute.
	
	self assert: dependencyCount equals: 2.