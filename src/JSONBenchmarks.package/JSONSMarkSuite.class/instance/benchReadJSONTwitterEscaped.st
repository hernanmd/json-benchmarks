benchmarking
benchReadJSONTwitterEscaped

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #twitterEscaped) read ]
