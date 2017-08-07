logging
logOutput: outputPipeline error: errorPipeline
	self writeLog: errorPipeline upToEnd.
	self writeOutput: outputPipeline upToEnd.