accessing
imagePath
	
	^ imagePath ifNil: [ MikePath local: 'Pharo.image' ]