datasets
newReader: aJSONReaderClass forDataset: aJSONDatasetSelector

	^ self new
		readerClass: aJSONReaderClass;
		initializeDataset: aJSONDatasetSelector;
		yourself