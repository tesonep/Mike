tests-needsExecution
testDoesNotNeedToExecuteIfDone

	task execute.
	self deny: task needsToExecute.