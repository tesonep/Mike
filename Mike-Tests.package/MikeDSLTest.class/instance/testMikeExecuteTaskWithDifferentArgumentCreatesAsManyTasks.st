tests
testMikeExecuteTaskWithDifferentArgumentCreatesAsManyTasks

	build mainWithArg: 1.
	build mainWithArg: 2.
	
	self assert: (runner ruleNamed: #mainWithArg:) tasks size equals: 2