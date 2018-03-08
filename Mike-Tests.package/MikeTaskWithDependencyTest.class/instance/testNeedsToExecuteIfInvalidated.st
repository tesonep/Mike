tests-needsExecution
testNeedsToExecuteIfInvalidated

	task execute.
	task invalidate.
	self assert: task needsToExecute.