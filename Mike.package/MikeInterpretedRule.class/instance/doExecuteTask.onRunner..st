executing
doExecuteTask: aMikeTask onRunner: aMikeRunner 
	
	^ MikeInterpreter new
		receiver: receiver;
		runner: (MikeDependencyRecorder on: aMikeTask runner: aMikeRunner);
		pushMethodContextFor: self lookupMethodAST withArguments: aMikeTask arguments;
		interpret.