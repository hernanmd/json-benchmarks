accessing
outputStream 

	^ OutputStream
		ifNil: [ OutputStream := self defaultOutputDestination ]