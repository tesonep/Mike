test-needsToExecute
testAnotherTaskWithEnoughArgumentsShouldExecute

	anotherTaskWithEnoughArguments execute.
	
	self assert: (accumulator includes: 'string').