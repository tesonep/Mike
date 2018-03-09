visiting
visitCascadeNode: aRBCascadeNode 
	
	| lastValue messageReceiver |
	lastValue := messageReceiver := aRBCascadeNode receiver acceptVisitor: self.
	aRBCascadeNode messages do: [ :each | 
		lastValue := self evaluateMessage: each withReceiver: messageReceiver.
		self shouldReturn ifTrue: [ ^ self returnValue ] ].
	^ lastValue