baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		spec
		configuration: 'OSProcess' with: [ spec
			versionString: #stable;
			repository: 'http://www.squeaksource.com/OSProcess' ];

		configuration: 'ProcessWrapper' with: [ spec
			versionString: #stable;
			repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main' ];

		package: 'Mike' with: [ spec requires: #('Mike-Compatibility' 'OSProcess') ];		
		package: 'Mike-Compatibility';
		package: 'Mike-Tests' with: [ spec requires: #('core') ];

		group: 'core' with: #('Mike');
		group: 'test' with: #('Mike-Tests');
		group: 'development' with: #('core' 'test')
	].