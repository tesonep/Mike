visiting
visitBlockNode: aRBBlockNode 
	
	^ MikeBlock new
		interpreter: self;
		node: aRBBlockNode;
		yourself