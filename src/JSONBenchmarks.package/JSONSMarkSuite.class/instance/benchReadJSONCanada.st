benchmarking
benchReadJSONCanada

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #canada) read ]
