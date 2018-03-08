tests-needsExecution
testNeedsToExecuteIfDependencyIsInvalidated

	task execute.
	dependency invalidate.
	self assert: task needsToExecute.