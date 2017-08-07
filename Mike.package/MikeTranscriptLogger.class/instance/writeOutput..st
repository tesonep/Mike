logging
writeOutput: aString
	stdoutEnabled
		ifTrue: [ self writeLog: aString ]