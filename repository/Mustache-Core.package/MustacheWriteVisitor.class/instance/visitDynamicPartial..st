visiting
visitDynamicPartial: aMustacheDynamicPartial

	| partial |
	
	partial := aMustacheDynamicPartial lookupInContext: context.
	partial ifNotNil: [ 
		self visit: (self partialAt: partial)
	]