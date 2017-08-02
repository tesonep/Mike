expansion
resolveOnMike: aMikeEnvironment 
	
	^ string format: (formatDictionary asDictionary
		collect: [ :each | each resolveOnMike: aMikeEnvironment ])