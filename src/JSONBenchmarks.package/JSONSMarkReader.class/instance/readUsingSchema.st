meta-object-protocol
readUsingSchema

	"And read the JSON structure:"
	(NeoJSONReader on: self jsonStream)
		for: #CollectionOfObject customDo: [ :mapping | mapping listOfElementSchema: Object ];
		for: Object
			do: [ :mapping | 
			mapping mapInstVar: 'fileName'.
			(mapping mapInstVar: 'url') valueSchema: ZnUrl ];
		for: ZnUrl customDo: [ :mapping | mapping decoder: [ :string | string asZnUrl ] ];
		nextAs: #CollectionOfObject