instance-creation
root: aString 
	
	^ self new
		path: aString;
		beRoot;
		yourself