benchmarking
benchJSON

	self problemSize timesRepeat: [ 
		(JSONSMarkReader 
			newReader: dataset key 
			forDataset: dataset value) 
				perform: benchmarkOperation ]
