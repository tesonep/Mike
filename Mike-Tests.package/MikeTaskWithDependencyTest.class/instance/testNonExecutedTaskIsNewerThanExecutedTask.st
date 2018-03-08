tests-needsExecution
testNonExecutedTaskIsNewerThanExecutedTask

	dependency execute.	
	self assert: (task isNewerThan: dependency)