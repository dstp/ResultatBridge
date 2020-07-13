basic tests
testResultatsTour
	| t d |
	t := Tournoi new
		nbTables: 5;
		nouvellesDonnes: 30.
	d := t donneNumero: 5.
	self assert: (t numTable: d numero) equals: 1.
	d fiche: #(-430 -180 -400 50 50).
	self assert: (d resultatsTour: 1) equals: #(1 1 '' 430 0.0 100.0).
	self
		assert: (d printResultatsTour: 1)
		equals: '1         1                   430       0.0       100.0     '
