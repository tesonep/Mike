running
setUp

	super setUp.
	count := 0.
	dependencyCount := 0.
	dependency := (MikeRule new evaluable: [ dependencyCount := dependencyCount + 1 ]) newTask.
	task := (MikeRule new evaluable: [ 
		dependency execute.
		count := count + 1
	]) newTask.
	task addDependency: dependency.