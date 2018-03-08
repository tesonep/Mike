tests-needsExecution
testDoesNotNeedToExecuteDependencyIfTaskInvalidated

	task execute.
	task invalidate.
	self deny: dependency needsToExecute.