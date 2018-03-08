test-needsToExecute
testTwoTasksWithSameRuleButDifferentArgumentsAreIndependent

	taskWithEnoughArguments execute.
	anotherTaskWithEnoughArguments execute.
	
	self assert: (accumulator includes: 1).
	self assert: (accumulator includes: 'string').