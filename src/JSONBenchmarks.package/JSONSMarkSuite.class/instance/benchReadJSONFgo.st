benchmarking
benchReadJSONFgo

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #fgo) read ]
