visiting
visitMessageNode: aRBMessageNode
	
	| messageReceiver |
	messageReceiver := aRBMessageNode receiver acceptVisitor: self.
	self shouldReturn ifTrue: [ ^ self returnValue ].
	^ self evaluateMessage: aRBMessageNode withReceiver: messageReceiver.