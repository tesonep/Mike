visiting
visitAssignmentNode: aRBAssignmentNode 
	
	| assignmentValue |
	assignmentValue := aRBAssignmentNode value acceptVisitor: self.
	self shouldReturn ifTrue: [ ^ self ].
	^ aRBAssignmentNode variable binding slot write: assignmentValue to: receiver.