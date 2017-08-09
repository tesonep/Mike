running
assertExistsFilesMatching: aFileName
	self
		assert:
			(((MikePath local: '.') resolveOnMike: env) asFileReference allChildrenMatching: aFileName)
				isEmpty not