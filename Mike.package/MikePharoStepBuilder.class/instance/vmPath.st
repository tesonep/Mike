accessing
vmPath
	
	^ vmPath ifNil: [ MikePath local: 'pharo' ]