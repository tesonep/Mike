interpreting
interpretBlock: aRBBlockNode 
	
	| lastValue |
	lastValue := nil.
	aRBBlockNode statements do: [ :statement |
		lastValue := statement acceptVisitor: self.
		self shouldReturn ifTrue: [ ^ self returnValue ] ].
	^ lastValue