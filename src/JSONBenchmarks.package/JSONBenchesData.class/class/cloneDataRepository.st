private
cloneDataRepository

	(IceRepositoryCreator new
		 location: self localGit;
		 remote: self remoteGit;
		 createRepository) register