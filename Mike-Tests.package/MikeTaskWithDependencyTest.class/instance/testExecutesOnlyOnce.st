tests-execution
testExecutesOnlyOnce

	task execute; execute; execute.
	self assert: count equals: 1.