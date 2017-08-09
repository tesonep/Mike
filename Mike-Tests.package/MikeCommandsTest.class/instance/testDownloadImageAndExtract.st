tests
testDownloadImageAndExtract
	mike download: 'http://files.pharo.org/get-files/60/pharo.zip'.
	mike extractZip: (MikePath local: 'pharo.zip').
	
	mike runOn: env.
	
	self assertExistsFile: 'pharo.zip'.
	self assertExistsFile: 'Pharo.image'.
	self assertExistsFile: 'Pharo.changes'.
	