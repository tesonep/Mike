visiting
visitAssignmentNode: aRBAssignmentNode 
	
	| assignmentValue |
	assignmentValue := aRBAssignmentNode value acceptVisitor: self.
	self shouldReturn ifTrue: [ ^ self returnValue ].
	
	^ aRBAssignmentNode variable isTemp 
		ifTrue: [ temps at: aRBAssignmentNode variable name put: assignmentValue ]
		ifFalse: [ aRBAssignmentNode variable binding slot write: assignmentValue to: receiver ]