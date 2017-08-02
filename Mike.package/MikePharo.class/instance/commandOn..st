accessing
commandOn: aMike

	^ String streamContents: [ :str |
		str
			nextPutAll: (vmPath resolveOnMike: aMike);
			space;
			nextPutAll: (imagePath resolveOnMike: aMike).
		arguments do: [ :each | 
			str
				space;
				nextPutAll: (each resolveOnMike: aMike) ] ]