tests
testDownloadImage
	mike download: 'http://files.pharo.org/get-files/60/pharo.zip'.
	mike runOn: env.
	
	self assertExistsFile: 'pharo.zip'.
	