test-needsToExecute
testTaskWithEnoughArgumentsShouldExecute

	taskWithEnoughArguments execute.
	
	self assert: (accumulator includes: 1).