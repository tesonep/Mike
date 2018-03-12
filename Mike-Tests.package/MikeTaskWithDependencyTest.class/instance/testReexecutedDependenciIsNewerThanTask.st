tests-needsExecution
testReexecutedDependenciIsNewerThanTask

	task execute.
	dependency invalidate; execute.
	
	self assert: (dependency invalidatesResult: task)