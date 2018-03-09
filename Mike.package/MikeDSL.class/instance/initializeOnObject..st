initialization
initializeOnObject: anObject

	anObject class methods do: [ :each |
		runner addRule: (MikeInterpretedRule receiver: anObject selector: each selector) ].