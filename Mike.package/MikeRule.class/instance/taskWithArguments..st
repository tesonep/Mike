tasks
taskWithArguments: arguments
	
	^ tasks
		at: arguments
		ifAbsentPut: [ self newTask
			arguments: arguments;
			yourself ]