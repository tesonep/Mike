running
assertExistsFile: aFileName
	self assert: ((MikePath local: aFileName) resolveOnMike: env) asFileReference exists
