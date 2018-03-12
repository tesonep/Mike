testing
needsToExecute

	self isDone ifFalse: [ ^ true ].

	^ self dependencies anySatisfy: [ :each | each invalidatesResult: result ]