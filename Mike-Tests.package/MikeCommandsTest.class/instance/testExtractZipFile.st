tests
testExtractZipFile
 	| arch anStream|
	'testEnvironment/' asFileReference ensureCreateDirectory.
	anStream := 'testEnvironment/test.zip' asFileReference binaryWriteStream.
	
	arch := ZipArchive new.
	arch addString: 'test 1' as: 'test.txt'.
	arch addString: 'test 2' as: 'test2.txt'.
	arch writeTo: anStream.

	anStream flush close.

	mike extractZip: (MikePath local:'test.zip').
	mike runOn: env.
	
	self assertExistsFile: 'test.txt'.
	self assertExistsFile: 'test2.txt'.
	