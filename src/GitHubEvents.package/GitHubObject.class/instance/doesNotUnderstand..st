reflective operations
doesNotUnderstand: aMessage

	| variableName |
	variableName := aMessage selector copyWithout: $:.

	(self class hasInstVarNamed: variableName) ifTrue: [ ^ self ].
	(RBAddInstanceVariableRefactoring
		 model: nil
		 variable: variableName
		 class: self class) execute.
	(RBCreateAccessorsForVariableTransformation
		 instanceVariable: variableName
		 class: self class)
		transform;
		performChanges.