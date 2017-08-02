steps
loadBaseline: aString filetree: aMikePath save: shouldSave
	^ self
		eval:
			(MikeExpandedString
				string:
					'"[ Metacello new
				baseline: ''{baseline}'';
				repository: ''filetree://{path}'';
				load.
			] on: Warning do: #resume"'
				format:
					{('baseline' -> aString).
					('path' -> aMikePath)})
		save: shouldSave