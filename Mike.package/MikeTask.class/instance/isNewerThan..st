testing
isNewerThan: anotherTask
	
	"I have changes newer than a time if
	 - I was never executed,
	 - or my actual modification time is newer than the time"
	self isDone ifFalse: [ ^ true ].
	
	^ self modificationTime > anotherTask modificationTime