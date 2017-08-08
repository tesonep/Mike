logging
logStepCompleted: aMikeStep
	| totalTime |
	totalTime := Time now asMilliSeconds - stepStartTime asMilliSeconds.
	
	self log: 'Completed ' , totalTime asString , ' ms'.