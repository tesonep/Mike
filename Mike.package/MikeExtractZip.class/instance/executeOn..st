running
executeOn: env
	| arch |
	arch := ZipArchive new.
	arch readFrom: (zipFilename resolveOnMike: env) asFileReference readStream.
	arch extractAllTo: (self targetDirectory resolveOnMike: env) asFileReference informing: nil.