meta-object-protocol
initializeDataset: aDatasetSelector

	self
		jsonStream: (JSONBenchesData perform: aDatasetSelector) readStream;
		yourself