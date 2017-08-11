expansion
resolveOnMike: aMikeEnvironment
	^ [ parent := aMikeEnvironment.
	string format: self ]
		ensure: [ parent := nil ]