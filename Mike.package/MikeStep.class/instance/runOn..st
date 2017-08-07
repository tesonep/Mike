running
runOn: aMikeEnvironment

	aMikeEnvironment logger logStepStarted: self.
	self executeOn: aMikeEnvironment.
	aMikeEnvironment logger logStepCompleted: self