execution
executeTask: aTaskName withArguments: arguments
	
	"A task has asked me to execute a dependent task.
	I record that dependency and forward the execution of the dependency mike."
	
	| dependency |
	dependency := runner taskNamed: aTaskName withArguments: arguments.
	task addDependency: dependency.
	^ dependency executeOn: runner