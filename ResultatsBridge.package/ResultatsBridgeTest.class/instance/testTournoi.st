basic tests
testTournoi
	| t |
	t := Tournoi new
		nbTables: 9;
		nouvellesDonnes: 27.
	self assert: t nbDonnes equals: 27.
	self assert: (t donneNumero: 10) tournoi equals: t