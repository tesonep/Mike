tests
testMikeTaskByRuleWithDifferentArgumentIsDifferentSameRule

	| task1 task2 |
	task1 := runner taskNamed: #mainWithArg: withArguments: { 1 }.
	task2 := runner taskNamed: #mainWithArg: withArguments: { 2 }.
	self deny: task1 == task2