benchmarking
benchJSON
	"Read JSON datasets defined in the receiver"

	self problemSize timesRepeat: [ 
		(JSONSMarkReader 
			newReader: dataset key 
			forDataset: dataset value) 
				perform: benchmarkOperation ]
