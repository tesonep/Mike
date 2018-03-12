running
setUp
	
	super setUp.
	accumulator := OrderedCollection new.
	
	dependentRule := MikeRule new evaluable: [ :mike :argument |
		accumulator add: argument ].
	ruleWithArgument := MikeRule new evaluable: [ :mike :argument |
		mike executeTask: (dependentRule taskWithArguments: { argument }) ].
	
	task := ruleWithArgument taskWithArguments: { self file }