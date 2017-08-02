actions
runShellCommand: aCommand
	
	| process errorPipeline |
	self ensureWorkingDirectory.
	
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
		Transcript nextPutAll: errorPipeline upToEnd.
		Transcript nextPutAll: process pipeFromOutput upToEnd.
		Transcript flush.
	 ] doWhileFalse: [ process isComplete ].
	
	process succeeded
		ifFalse: [ self error: 'Error executing: ' , process asString ]