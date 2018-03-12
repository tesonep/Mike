execution
executeTask: aTaskable
	"A task has asked me to execute a dependent task.
	I record that dependency and forward the execution of the dependency mike."
	
	| taskToRun |
	taskToRun := aTaskable asTaskOn: runner.
	taskToRun arguments do: [ :each | each registerAsDependencyOn: executedTask ].
	executedTask addDependency: taskToRun.
	^ taskToRun executeOn: runner