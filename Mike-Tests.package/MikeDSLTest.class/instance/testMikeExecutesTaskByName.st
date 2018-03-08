tests
testMikeExecutesTaskByName

	build executeTask: #main.
	self assert: self count equals: 1