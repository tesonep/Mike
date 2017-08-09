actions
runShellCommand: aCommand	
	| process errorPipeline |
		
	errorPipeline := InternalPipe nonBlockingPipe.
	process := PipeableOSProcess commandNoEvaluate: aCommand
		environment: nil
		workingDir: self workingDirectoryReference fullName
		input: nil
		output: nil
		error: nil
		errorPipelineStream: errorPipeline
		shellSyntax: nil.
	
	"process pipeFromError setBufferedReader."
	process prepareOutputForInternalReader.

	process value.
	
	[ 500 milliSeconds wait.
		logger logOutput: process pipeFromOutput error: errorPipeline  
	 ] doWhileFalse: [ process isComplete ].
	
	logger logProcessComplete: process.
	
	process succeeded
		ifFalse: [ self error: 'Error executing: ' , process asString ]