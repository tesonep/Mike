accessing
targetDirectory
	^ targetDirectory ifNil:[ ^ MikePath local: '.']