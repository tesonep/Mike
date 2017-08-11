tests
testDefiningNames
	mike define: '{env:HOME}' as: 'HOUSE'.
	mike define: (MikePath local:'.') as: 'pwd'.

	mike runOn: env.

	self assert: ('{HOUSE}' resolveOnMike: env) equals: (Smalltalk os environment at:'HOME').
	self assert: ('{pwd}' resolveOnMike: env) equals: ((MikePath local:'.') resolveOnMike: env).
