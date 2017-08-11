tests
testGetPharo
	mike getPharo: '60+vm'.
	mike runOn: env.
	
	self assertExistsFile: 'pharo'.
	self assertExistsFile: 'Pharo.image'.
	self assertExistsFile: 'Pharo.changes'.	
	