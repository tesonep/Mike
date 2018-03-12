accessing
file: aFile

	file := aFile.
	fileEntry := aFile exists ifTrue: [ aFile entry ]