comparing
= anotherResult
	
	^ self species = anotherResult species
		and: [ self file = anotherResult file
			and: [ self exists = anotherResult exists
				and: [ self exists not
					or:[ self size = anotherResult size
						and: [ self permissions = anotherResult permissions ] ] ] ] ]