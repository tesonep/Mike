tests-needsExecution
testNonExecutedTaskIsNewerThanExecutedTask

	dependency execute.	
	self assert: (task invalidatesResult: dependency)