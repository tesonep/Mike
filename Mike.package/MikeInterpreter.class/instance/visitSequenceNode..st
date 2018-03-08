visiting
visitSequenceNode: aRBSequenceNode 
	
	aRBSequenceNode statements do: [ :statement |
		statement acceptVisitor: self.
		self shouldReturn ifTrue: [ ^ self returnValue ] ].
	^ self returnValue