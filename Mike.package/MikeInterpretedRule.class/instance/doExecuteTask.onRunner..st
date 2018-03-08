executing
doExecuteTask: aMikeTask onRunner: aMikeRunner 
	
	^ MikeInterpreter new
		receiver: receiver;
		arguments: aMikeTask arguments;
		runner: aMikeRunner;
		interpret: self lookupMethodAST.