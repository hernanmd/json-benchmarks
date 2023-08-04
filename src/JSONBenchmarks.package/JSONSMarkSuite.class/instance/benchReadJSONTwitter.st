benchmarking
benchReadJSONTwitter

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #twitter) read ]
