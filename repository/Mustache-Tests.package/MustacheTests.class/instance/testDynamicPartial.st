tests
testDynamicPartial

	| partials object result |
	
	partials := { 
		'id' -> 'This is {{* second}}'.
		'text' -> 'a test' 
	} asDictionary.
	
	object := { 'id' . 'text' }.
	result := '{{* first }}' asMustacheTemplate value: object partials: partials.
	
	self assert: result equals: 'This is a test'