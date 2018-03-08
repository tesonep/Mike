visiting
visitMessageNode: aRBMessageNode
	
	| messageReceiver messageArguments |
	messageReceiver := aRBMessageNode receiver acceptVisitor: self.
	self shouldReturn ifTrue: [ ^ self ].
	messageArguments := aRBMessageNode arguments collect: [ :each | | result |
		result := each acceptVisitor: self.
		self shouldReturn ifTrue: [ ^ self ].
		result ].
	
	^ aRBMessageNode isSelfSend
		ifTrue: [ runner executeTask: aRBMessageNode selector withArguments: messageArguments ]
		ifFalse: [ messageReceiver perform: aRBMessageNode selector withArguments: messageArguments ]