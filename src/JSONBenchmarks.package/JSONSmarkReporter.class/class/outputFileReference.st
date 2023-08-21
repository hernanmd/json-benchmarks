accessing
outputFileReference

	^ OutputFileReference
		ifNil: [ OutputFileReference := self defaultOutputFilename ]