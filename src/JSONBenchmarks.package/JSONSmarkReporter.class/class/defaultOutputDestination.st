defaults
defaultOutputDestination
	"Answer a <Stream> used to output receiver's contents"

	^ self defaultOutputFilename asFileReference writeStream