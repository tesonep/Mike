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

		package: 'Mike-Compatibility';

		for: #MacOS do: [ spec
			package: 'Mike'
			with: [ spec requires: #('Mike-Compatibility' 'OSProcess') ] ];
		for: #Unix do: [ spec
			package: 'Mike'
			with: [ spec requires: #('Mike-Compatibility' 'OSProcess' ) ] ];
		for: #Windows do: [ spec
			package: 'Mike'
			with: [ spec requires: #('ProcessWrapper') ] ];
		
		package: 'Mike-Tests' with: [ spec requires: #('core') ];

		group: 'core' with: #('Mike');
		group: 'test' with: #('Mike-Tests');
		group: 'development' with: #('core' 'test')
	].