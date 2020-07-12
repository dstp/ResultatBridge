as yet unclassified
testMarque2
	| d |
	d := Donne new.
	d fiche: #(150 500 110 130 100).
	self assert: d fiche asArray equals: #(150 500 110 130 100).
	self
		assert: d resultatsNS asArray
		equals: #(75.0 100.0 25.0 50.0 0.0).
	self
		assert: d resultatsEO asArray
		equals: #(25.0 0.0 75.0 50.0 100.0)