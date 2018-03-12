tests
testTaskReceivingAFileAsArgumentNeedsToExecuteAsSoonAsFileHasNewerModificationTime

	| fileDependency |
	self file ensureCreateFile.
	task execute.

	self file writeStreamDo: [ :str | str nextPutAll: 'random change'; flush ].

	self assert: task needsToExecute.
	fileDependency := task dependencies detect: [ :each | each isFile ].
	self assert: fileDependency hasChanged.