test-needsToExecute
testATaskWithArgumentsIsNotReexecuted

	taskWithEnoughArguments execute.
	taskWithEnoughArguments execute.
	
	self assert: accumulator size equals: 1.
	self assert: (accumulator includes: 1)