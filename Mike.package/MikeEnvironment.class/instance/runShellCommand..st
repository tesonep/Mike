actions
runShellCommand: aCommand
	| process |
	process := OSSUnixSubprocess new.
	process
		shellCommand: aCommand;
		workingDirectory: self workingDirectoryReference fullName;
		redirectStdout;
		redirectStderr.
		
	process
		runAndWaitPollingEvery: (Delay forMilliseconds: 500)
		doing: [ :proc :stdout :stderr | logger logOutput: stdout error: stderr ]
		onExitDo: [ :proc :stdout :stderr | logger logOutput: stdout error: stderr ].

	process isSuccess
		ifFalse: [ self error: 'Error executing: ' , process asString ]