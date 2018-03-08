test-needsToExecute
testNeedsToExecuteIfInvalidated

	task execute.
	task invalidate.
	self assert: task needsToExecute.