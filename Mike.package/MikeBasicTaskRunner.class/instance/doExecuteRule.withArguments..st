executing
doExecuteRule: aMikeEvaluateRule withArguments: aCollection 
	
	^ aMikeEvaluateRule executeWithArguments: (aCollection copyWithFirst: self)