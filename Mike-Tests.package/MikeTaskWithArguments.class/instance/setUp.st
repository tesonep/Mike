running
setUp

	super setUp.
	accumulator := OrderedCollection new.
	rule := MikeRule new evaluable: [ :mike :argument | accumulator add: argument ].
	
	taskWithNotEnoughArguments := rule taskWithArguments: { }.
	taskWithEnoughArguments := rule taskWithArguments: { 1 }.
	anotherTaskWithEnoughArguments := rule taskWithArguments: { 'string' }.
	taskWithMoreArguments := rule taskWithArguments: { 'string'. 1 }.