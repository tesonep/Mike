instance-creation
string: aString values: aCollection
	^ self new
		string: aString;
		localValues: aCollection asDictionary;
		yourself