running
runOn: aMikeEnvironment

	aMikeEnvironment logger logMikeStarted: self.	
	steps do: [ :each | each runOn: aMikeEnvironment ].
	aMikeEnvironment logger logMikeCompleted: self.