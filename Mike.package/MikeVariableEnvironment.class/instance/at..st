accessing
at: aKey
	(localValues includesKey: aKey)
		ifTrue: [ ^ (localValues at: aKey) resolveOnMike: self mikeEnvironment ].
		
	parent ifNotNil: [ ^ parent at: aKey ].
	
	^ '{' , aKey asString , '}' 