evaluating
value: anArgument

	interpreter pushBlockContextFor: self withArguments: { anArgument }.
	^ interpreter interpretBlock: node.