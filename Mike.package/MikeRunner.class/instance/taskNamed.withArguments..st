accessing
taskNamed: aString withArguments: aCollection 
	
	^ (self ruleNamed: aString) taskWithArguments: aCollection