resolution
resolveOnMike: aMikeEnvironment 
	
	| pathObject parent |
	pathObject := Path from: path.
	pathObject isAbsolute ifTrue: [ ^ path ].
	
	parent := isRoot
		ifTrue: [ OSProcess thisOSProcess getCwd asFileReference ]
		ifFalse: [ aMikeEnvironment workingDirectoryReference ].
		
	^ (parent / path) fullName 