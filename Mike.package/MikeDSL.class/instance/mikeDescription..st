accessing
mikeDescription: aMikeDescription 
	mikeDescription := aMikeDescription.
	mikeDescription class methods do: [ :each |
		self addRule: (MikeInterpretedRule receiver: mikeDescription selector: each selector) ]