tests
testArbitraryInvalidCommand
	mike sh: 'notACommand'.
	
	self should: [ mike runOn: env ] raise: Error