tests
testMikeInvalidateInvalidatesTask

	| mockRule |
	mockRule := MikeMockRule new.
	build addRule: mockRule.
	build invalidate: mockRule name.
	
	self assert: mockRule tasks size equals: 1.
	self assert: mockRule tasks anyOne isInvalidated.