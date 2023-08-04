benchmarking
benchReadJSONGithubEvents

	self problemSize timesRepeat: [ (JSONSMarkReader newForDataset: #githubEvents) read ]
