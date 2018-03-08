tests
testMikeTaskTracesDependenciesOnExecution

	build executeTask: #main.
	self assert: ((build taskNamed: #main) dependsOnTask: #dependency).