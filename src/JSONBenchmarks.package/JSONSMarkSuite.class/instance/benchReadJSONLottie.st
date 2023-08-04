benchmarking
benchReadJSONLottie

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #lottie) read ]
