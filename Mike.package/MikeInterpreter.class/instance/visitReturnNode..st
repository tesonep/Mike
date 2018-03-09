visiting
visitReturnNode: aRBReturnNode 
	
	| subReturnValue |
	subReturnValue := aRBReturnNode value acceptVisitor: self.
	self shouldReturn ifTrue: [ ^ self returnValue ].
	returnValue := subReturnValue.
	shouldReturn := true.