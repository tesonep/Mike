tests
testDownloadImageAndExtract
	mike download: 'http://files.pharo.org/get-files/61/pharo.zip'.
	mike extractZip: (MikePath local: 'pharo.zip').
	
	mike runOn: env.
	
	self assertExistsFile: 'pharo.zip'.
	self assertExistsFilesMatching: 'Pharo-*.image'.
	self assertExistsFilesMatching: 'Pharo-*.changes'.
	