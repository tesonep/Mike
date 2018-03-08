tests-execution
testInvalidateDependencyDoesNotExecuteDependency

	dependency invalidate.
	self assert: dependencyCount equals: 0.