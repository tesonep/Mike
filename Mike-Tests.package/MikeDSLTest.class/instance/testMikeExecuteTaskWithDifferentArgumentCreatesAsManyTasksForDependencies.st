tests
testMikeExecuteTaskWithDifferentArgumentCreatesAsManyTasksForDependencies

	build executeTask: #mainWithArg: withArguments: {1}.
	build executeTask: #mainWithArg: withArguments: {2}.
	
	self assert: (build ruleNamed: #dependencyWithArg:) tasks size equals: 2