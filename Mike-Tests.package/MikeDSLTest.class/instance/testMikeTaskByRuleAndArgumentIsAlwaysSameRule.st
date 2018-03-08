tests
testMikeTaskByRuleAndArgumentIsAlwaysSameRule

	| task1 task2 |
	task1 := build taskNamed: #mainWithArg: withArguments: { 1 }.
	task2 := build taskNamed: #mainWithArg: withArguments: { 1 }.
	self assert: task1 == task2