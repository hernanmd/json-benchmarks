baselines
baseline: spec
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec
				baseline: 'NeoJSON'  with: [ spec repository: 'github://svenvc/NeoJSON/repository' ];
				baseline: 'GeoJSON'  with: [ spec repository: 'github://zweidenker/GeoJSON' ];
				baseline: 'SMark'    with: [ spec repository: 'github://guillep/SMark/repository' ];

				package: 'JSONBenchmarks'      with: [ spec requires: #(SMark NeoJSON GeoJSON) ];
				package: 'JSONBenchmarks-Tests'	with: [ spec requires: #(JSONBenchmarks) ];
				package: 'GitHubEvents'        with: [ spec requires: #(JSONBenchmarks NeoJSON) ].

			spec 
				group: 'Core' 						with: #('JSONBenchmarks');
				group: 'Tests' 						with: #('JSONBenchmarks' 'JSONBenchmarks-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]