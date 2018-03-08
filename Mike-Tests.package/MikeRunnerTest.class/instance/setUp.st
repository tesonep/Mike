tests
setUp

	super setUp.
	count := 0.
	dependencyCount := 0.
	
	build := MikeRunner new.
	build addRule: #dependency -> [ dependencyCount := dependencyCount + 1 ].
	build addRule: #main -> [ :mike |
		mike executeTask: #dependency.
		count := count + 1 ]