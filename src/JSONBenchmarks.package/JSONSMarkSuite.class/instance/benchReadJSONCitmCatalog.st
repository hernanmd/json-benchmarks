benchmarking
benchReadJSONCitmCatalog

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #citmCatalog) read ]
