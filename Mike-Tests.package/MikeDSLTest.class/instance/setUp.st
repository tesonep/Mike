running
setUp

	super setUp.
	dslMock := MikeDSLMock new.
	build := MikeDSL on: dslMock.
	runner := build instVarNamed: #runner.