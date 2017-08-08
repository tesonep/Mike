logging
logMikeCompleted: aMike 
	| totalTime |
	totalTime := Time now asDuration - mikeStartTime asDuration.
	
	self log: 'Process completed ' , totalTime asMilliSeconds asString , ' ms.'