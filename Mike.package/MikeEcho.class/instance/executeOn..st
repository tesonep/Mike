running
executeOn: env
	env logger writeOutput: (self resolveText: env).
	env logger newLine.