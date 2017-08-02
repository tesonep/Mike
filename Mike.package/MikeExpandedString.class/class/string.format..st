instance-creation
string: aString format: aCollection 
	
	^ self new
		string: aString;
		formatDictionary: aCollection;
		yourself