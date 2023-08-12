accessing
neoJsonMapping: aMapper

	super neoJsonMapping: aMapper.
	aMapper for: self do: [ :mapping |
		mapping mapAccessors: #(name url) ]