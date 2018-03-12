tests
testTaskReceivingAFileAsArgumentDependsOnFile

	task execute.
	self assert: (task dependencies includes: self file asMikeResult)