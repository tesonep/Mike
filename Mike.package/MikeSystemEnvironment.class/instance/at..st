accessing
at: aKey
	| array |
	
	array := aKey splitOn: ':'.
	array size ~= 2 ifTrue:[ ^ '{' , aKey , '}'].
	
	^ Smalltalk os environment at: (array at: 2)