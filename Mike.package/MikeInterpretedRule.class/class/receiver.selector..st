instance-creation
receiver: anObject selector: aString 
	
	^ self new
		receiver: anObject;
		selector: aString;
		yourself