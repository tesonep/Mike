stack-management
pushMethodContextFor: aRBMethodNode withArguments: aCollection 
	
	methodAST := aRBMethodNode.
	aRBMethodNode arguments withIndexDo: [ :argumentNode :index |
		temps at: argumentNode name put: (aCollection at: index) ].