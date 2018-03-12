tests
testTaskReceivingAFileAsArgumentDoesNotNeedToExecuteAsLongAsFileExistsWithOlderModificationTimeThanTask

	self file ensureCreateFile.
	task execute.
	
	self deny: task needsToExecute.
	self assert: task modificationTime >= self file modificationTime.