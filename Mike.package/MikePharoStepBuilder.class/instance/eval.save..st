steps
eval: aString save: shouldSave 
	
	^ self newMikePharoWithArgs:
		{ 'eval' } ,
		(self argumentsForSave: shouldSave andQuit: false),
		{ aString }
