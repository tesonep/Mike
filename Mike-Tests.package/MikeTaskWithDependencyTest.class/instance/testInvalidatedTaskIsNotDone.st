tests-isDone
testInvalidatedTaskIsNotDone

	task execute.
	task invalidate.
	self deny: task isDone.