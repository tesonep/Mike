command-building
newMikePharoWithArgs: args

	mike step: (MikePharo new 
		vmPath: self vmPath;
		imagePath: self imagePath;
		arguments: args)