tests-isDone
testInvalidatedTaskShouldHaveDependencyDone

	task execute.
	task invalidate.
	self assert: dependency isDone.