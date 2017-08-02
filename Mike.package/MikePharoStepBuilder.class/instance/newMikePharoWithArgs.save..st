command-building
newMikePharoWithArgs: args save: shouldSave

	mike step: (MikePharo new 
		vmPath: self vmPath;
		imagePath: self imagePath;
		arguments: args, (self argumentsForSave: shouldSave))