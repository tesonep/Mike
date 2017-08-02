steps
st: aMikePath args: args save: shouldSave
	
	| extraFlags |
	extraFlags := OrderedCollection new.
	shouldSave ifTrue: [ extraFlags add: '--save' ].
	extraFlags add: '--quit'.
	
	mike step: (MikePharo new 
		vmPath: self vmPath;
		imagePath: self imagePath;
		arguments: { 'st'. aMikePath }, args, extraFlags)