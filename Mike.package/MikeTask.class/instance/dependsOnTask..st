testing
dependsOnTask: aRuleName
	
	^ dependencies anySatisfy: [ :d | d ruleName = aRuleName ]