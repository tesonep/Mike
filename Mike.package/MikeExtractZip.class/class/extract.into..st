as yet unclassified
extract: zipFilename into: targetDirectory
	^ self new 
		zipFilename: zipFilename;
		targetDirectory: targetDirectory;
		yourself.