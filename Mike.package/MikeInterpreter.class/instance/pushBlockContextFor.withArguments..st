stack-management
pushBlockContextFor: aMikeBlock withArguments: aCollection 
	
	aMikeBlock argumentNodes withIndexDo: [ :argumentNode :index |
		temps at: argumentNode name put: (aCollection at: index) ].