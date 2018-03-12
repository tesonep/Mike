executing
executeTask: aTaskable
	
	^ (aTaskable asTaskOn: self)
		executeOn: self