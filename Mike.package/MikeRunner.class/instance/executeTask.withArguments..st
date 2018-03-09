executing
executeTask: aString withArguments: aCollection 
	
	^ (self taskNamed: aString withArguments: aCollection) executeOn: self