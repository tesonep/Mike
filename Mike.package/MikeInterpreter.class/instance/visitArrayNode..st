visiting
visitArrayNode: aRBArrayNode 
	^ aRBArrayNode statements
		collect: [ :statement | | value |
			value := statement acceptVisitor: self.
			self shouldReturn ifTrue: [ ^ self returnValue ].
			value ]
		as: Array