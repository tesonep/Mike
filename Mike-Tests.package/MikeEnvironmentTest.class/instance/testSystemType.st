tests
testSystemType
	self assert: ('{env:imageVersion}' resolveOnMike: env) equals: Smalltalk version.
	self assert: ('{env:vmVersion}' resolveOnMike: env) equals: Smalltalk vm version.
	self assert: ('{env:os}' resolveOnMike: env) equals: OSPlatform currentPlatformName.
	self assert: ('{env:osVersion}' resolveOnMike: env) equals: OSPlatform currentVersion.		