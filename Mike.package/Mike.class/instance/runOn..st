running
runOn: aMikeEnvironment

	aMikeEnvironment logger logMikeStarted: self.	
	aMikeEnvironment ensureWorkingDirectory.

	steps do: [ :each | each runOn: aMikeEnvironment ].
	aMikeEnvironment logger logMikeCompleted: self.