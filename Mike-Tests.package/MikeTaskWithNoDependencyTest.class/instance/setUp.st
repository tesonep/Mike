running
setUp

	super setUp.
	count := 0.
	task := (MikeRule new evaluable: [ count := count + 1 ]) newTask.