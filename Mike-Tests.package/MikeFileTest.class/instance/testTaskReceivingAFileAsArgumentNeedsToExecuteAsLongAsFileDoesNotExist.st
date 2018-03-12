tests
testTaskReceivingAFileAsArgumentNeedsToExecuteAsLongAsFileDoesNotExist

	task execute.
	
	self deny: self file exists.
	self assert: task needsToExecute