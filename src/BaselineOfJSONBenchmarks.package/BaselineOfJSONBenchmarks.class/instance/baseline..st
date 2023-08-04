baselines
baseline: spec
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec
				baseline: 'NeoJSON'  with: [ spec repository: 'github://svenvc/NeoJSON/repository' ];
				baseline: 'SMark'    with: [ spec repository: 'github://guillep/SMark/repository' ];

				package: 'JSONBenchmarks'      with: [ spec requires: #(SMark) ] ;
				package: 'JSONBenchmarks-Tests'	with: [ spec requires: #(JSONBenchmarks) ].
			spec 
				group: 'Core' 						with: #('JSONBenchmarks');
				group: 'Tests' 						with: #('JSONBenchmarks' 'JSONBenchmarks-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]