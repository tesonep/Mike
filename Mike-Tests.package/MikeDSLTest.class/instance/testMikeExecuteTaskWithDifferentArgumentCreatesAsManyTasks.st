tests
testMikeExecuteTaskWithDifferentArgumentCreatesAsManyTasks

	build executeTask: #mainWithArg: withArguments: {1}.
	build executeTask: #mainWithArg: withArguments: {2}.
	
	self assert: (build ruleNamed: #mainWithArg:) tasks size equals: 2