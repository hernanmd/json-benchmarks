accessing
defaultOutputFilename

	^ String streamContents: [ : stream | 
		stream
			<< 	DateAndTime current asFileNameCompatibleString;
			<< '.csv' ]