tests-execution
testInvalidateDoesNotExecuteDependency

	task invalidate.
	self assert: dependencyCount equals: 0.