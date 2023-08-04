benchmarking
benchReadJSONOtfcc

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #otfcc) read ]
