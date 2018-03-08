execution
executeOn: aRunner
	
	self needsToExecute ifTrue: [ 
		result := (self doExecuteOn: aRunner) asMikeResult ]