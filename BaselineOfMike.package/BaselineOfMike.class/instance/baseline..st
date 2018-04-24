baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		spec
		configuration: 'OSSubprocess' with: [ spec
			versionString: #stable;
			repository: 'github://marianopeck/OSSubprocess:master/repository' ];

		package: 'Mike' with: [ spec requires: #('Mike-Compatibility' 'OSSubprocess') ];		
		package: 'Mike-Compatibility';
		package: 'Mike-Tests' with: [ spec requires: #('core') ];

		group: 'core' with: #('Mike');
		group: 'test' with: #('Mike-Tests');
		group: 'development' with: #('core' 'test')
	].