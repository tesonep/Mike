running
runOn: aMikeEnvironment

	aMikeEnvironment logStep: self.
	self executeOn: aMikeEnvironment.
	aMikeEnvironment log: 'Done'