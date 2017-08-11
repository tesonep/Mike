accessing
command
	^ MikeExpandedString
		string: 'wget -O - get.pharo.org/{getString} | bash'
		values: {('getString' -> getString)}