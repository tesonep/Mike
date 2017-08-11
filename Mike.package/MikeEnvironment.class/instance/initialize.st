initialization
initialize
	super initialize.
	logger := MikeTranscriptLogger new.
	
	localValues at: 'env:imageVersion' put: Smalltalk version.
	localValues at: 'env:vmVersion' put: Smalltalk vm version.	
	localValues at: 'env:os' put: OSPlatform currentPlatformName.
	localValues at: 'env:osVersion' put: OSPlatform currentVersion.	
	
	parent := MikeSystemEnvironment new.