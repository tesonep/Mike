instance creation
on: anObject

	| dsl |
	dsl := self new.
	dsl initializeOnObject: anObject.
	^ dsl