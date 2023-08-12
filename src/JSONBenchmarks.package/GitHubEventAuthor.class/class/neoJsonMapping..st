accessing
neoJsonMapping: aMapper

	aMapper for: self do: [ :mapping |
		mapping mapAccessors: #(name email) ]