basic tests
testFicheEquipe
	| t d |
	t := Tournoi new
		nbTables: 9;
		nouvellesDonnes: 27.
	self assert: (t numTable: 1) equals: 1.
	self assert: (t numTable: 3) equals: 1.
	self assert: (t numTable: 5) equals: 2.
	self assert: (t numTable: 25) equals: 9.
	self assert: (t numTable: 27) equals: 9.
	d := t donneNumero: 1.
	self
		assert: d equipes asArray
		equals: #(#(1 1) #(9 8) #(8 6) #(7 4) #(6 2) #(5 9) #(4 7) #(3 5) #(2 3)).
	d := t donneNumero: 16.
	self
		assert: d equipes asArray
		equals: #(#(6 6) #(5 4) #(4 2) #(3 9) #(2 7) #(1 5) #(9 3) #(8 1) #(7 8)).
	d := t donneNumero: 1.
	self
		assert: d equipes asArray
		equals: #(#(1 1) #(9 8) #(8 6) #(7 4) #(6 2) #(5 9) #(4 7) #(3 5) #(2 3))