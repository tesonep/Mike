command-building
argumentsForSave: shouldSave andQuit: shouldQuit
	
	| extraFlags |
	extraFlags := OrderedCollection new.
	shouldSave ifTrue: [ extraFlags add: '--save' ].
	shouldQuit ifTrue: [ extraFlags add: '--quit' ].
	^ extraFlags