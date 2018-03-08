executing
executeWithArguments: aCollection 
	
	selector numArgs > aCollection size
		ifTrue: [ MikeInvalidArgumentsException signal ].
	^ (MessageSend receiver: receiver selector: selector)
			valueWithEnoughArguments: aCollection