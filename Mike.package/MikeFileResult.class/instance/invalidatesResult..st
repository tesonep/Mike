testing
invalidatesResult: aMikeResult 
	
	"I have changes newer than a time if
	 - I was never executed,
	 - or my actual modification time is newer than the time"
	^ self exists not
		or: [ self hasChanged
			or: [ aMikeResult isOlderThan: self modificationTime ] ]