benchmarking
benchReadJSONGSOC2018

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #gsoc2018) read ]
