test-needsToExecute
testDoesNotNeedToExecuteIfDone

	task execute.
	self deny: task needsToExecute.