instance-creation
on: aTask runner: aMikeRunner 

	^ self new
		task: aTask;
		runner: aMikeRunner;
		yourself