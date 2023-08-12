accessing
neoJsonMapping: aMapper

	super neoJsonMapping: aMapper.
	aMapper for: self do: [ :mapping |
		mapping 
			mapProperty: #type 
			getter: [ :object | object class jsonTypeLabel  ] 
			setter: [ :object :value | ].
		mapping mapAccessors: #(actor repo public createdAt payload org) ]