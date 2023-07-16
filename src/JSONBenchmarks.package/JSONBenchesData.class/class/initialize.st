class initialization
initialize

	self localGit exists
		ifFalse: [ self cloneDataRepository ]