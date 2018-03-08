tests-needsExecution
testNeedsToExecuteIfDependencyIsNewer

	task execute.
	dependency invalidate; execute.
	self assert: task needsToExecute.