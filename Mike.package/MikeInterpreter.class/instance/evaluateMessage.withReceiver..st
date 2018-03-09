evaluating
evaluateMessage: aRBMessageNode withReceiver: messageReceiver 
	
	| messageArguments |
	messageArguments := aRBMessageNode arguments collect: [ :each | | result |
		result := each acceptVisitor: self.
		self shouldReturn ifTrue: [ ^ self returnValue ].
		result ] as: Array.
	
	^ aRBMessageNode isSelfSend
		ifTrue: [ runner executeTask: aRBMessageNode selector withArguments: messageArguments ]
		ifFalse: [ messageReceiver perform: aRBMessageNode selector withArguments: messageArguments ]