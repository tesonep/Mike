tests
testMikeTaskDependenciesAreNotTracedIfNotExecuted

	self assert: (build taskNamed: #main) dependencies isEmpty