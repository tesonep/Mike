tests
testDownload
	mike download: 'http://get.pharo.org/vm'.
	mike runOn: env.
	
	self assertExistsFile: 'vm'.
	