benchmarking
benchReadJSONPoet

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #poet) read ]
