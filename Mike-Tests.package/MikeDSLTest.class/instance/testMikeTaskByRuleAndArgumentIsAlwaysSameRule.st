tests
testMikeTaskByRuleAndArgumentIsAlwaysSameRule

	| task1 task2 |
	task1 := runner taskNamed: #mainWithArg: withArguments: { 1 }.
	task2 := runner taskNamed: #mainWithArg: withArguments: { 1 }.
	self assert: task1 == task2