visiting
visitDynamicPartial: aMustacheDynamicPartial

	| partial |
	
	partial := aMustacheDynamicPartial lookupInContext: context.
	
	self visit: (self partialAt: partial)