execution
executeTask: aTaskName withArguments: arguments
	
	"A task has asked me to execute a dependent task.
	I record that dependency and forward the execution of the dependency mike."
	
	| taskToRun |
	taskToRun := runner taskNamed: aTaskName withArguments: arguments.
	arguments do: [ :each | each registerAsDependencyOn: executedTask ].
	executedTask addDependency: taskToRun.
	^ taskToRun executeOn: runner