tests
testMikeExecuteTaskWithDifferentArgumentCreatesAsManyTasksForDependencies

	build mainWithArg: 1.
	build mainWithArg: 2.
	
	self assert: (runner ruleNamed: #dependencyWithArg:) tasks size equals: 2