running
executeOn: env
	| downloadedFile |
	downloadedFile := self resolvedFileName: env.

	ZnClient new
		url: (url resolveOnMike: env);
		signalProgress: true;
		downloadTo: downloadedFile.
		
	env logger log: 'Downloaded ' , downloadedFile.