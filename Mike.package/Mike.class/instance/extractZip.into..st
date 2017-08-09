steps
extractZip: aZipFilename into: aTargetDirectory
	self step: (MikeExtractZip extract: aZipFilename into: aTargetDirectory)