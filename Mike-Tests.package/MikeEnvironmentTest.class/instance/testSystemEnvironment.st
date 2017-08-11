tests
testSystemEnvironment
		
	self assert: ('{env:HOME}' resolveOnMike: env) equals: (Smalltalk os environment at:'HOME').
	self assert: ('{env:PWD}' resolveOnMike: env) equals: (Smalltalk os environment at:'PWD').	