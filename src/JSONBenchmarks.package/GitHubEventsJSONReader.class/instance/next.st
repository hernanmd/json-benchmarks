reading
next
	json := (NeoJSONReader on: stream) next.
	^ json readJSONObjectFrom: self