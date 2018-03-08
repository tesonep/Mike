tests-isDone
testInvalidateDependencyTaskIsStillDone

	task execute.
	dependency invalidate.
	self assert: task isDone.