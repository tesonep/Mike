tests
testMikeExecutesTaskByName

	build executeTask: #main.
	self assert: count equals: 1