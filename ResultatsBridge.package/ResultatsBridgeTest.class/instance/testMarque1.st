basic tests
testMarque1
	| d |
	d := Donne new.
	d fiche: #(-430 -180 -400 50 50).
	self assert: d fiche asArray equals: #(-430 -180 -400 50 50).
	self assert: d resultatsNS asArray equals: #(0.0 50.0 25.0 87.5 87.5).
	self
		assert: d resultatsEO asArray
		equals: #(100.0 50.0 75.0 12.5 12.5)