as yet unclassified
testMarque3
	| d |
	d := Donne new.
	d fiche: #(-100 -110 110 -100 100).
	self assert: d fiche asArray equals: #(-100 -110 110 -100 100).
	self
		assert: d resultatsNS asArray
		equals: #(37.5 0.0 100.0 37.5 75.0).
	self
		assert: d resultatsEO asArray
		equals: #(62.5 100.0 0.0 62.5 25.0)