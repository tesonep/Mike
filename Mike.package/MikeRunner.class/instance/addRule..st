accessing
addRule: aRule
	
	| mikeRule |
	mikeRule := aRule asMikeRule.
	mikeRule runner: self.
	rules at: mikeRule name put: mikeRule.