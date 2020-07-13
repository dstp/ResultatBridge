basic tests
testFicheEquipeAvecSaut
	| t d |
	t := Tournoi new
		nbTables: 8;
		nouvellesDonnes: 32.
	self assert: (t numTable: 1) equals: 1.
	self assert: (t numTable: 4) equals: 1.
	self assert: (t numTable: 5) equals: 2.
	self assert: (t numTable: 28) equals: 7.
	self assert: (t numTable: 32) equals: 8.
	d := t donneNumero: 1.
	self
		assert: d equipes asArray
		equals: #(#(1 1) #(8 7) #(7 5) #(6 3) #(4 8) #(3 6) #(2 4)).
	d := t donneNumero: 16.
	self
		assert: d equipes asArray
		equals: #(#(4 4) #(3 2) #(2 8) #(1 6) #(7 3) #(6 1) #(5 7)).
	d := t donneNumero: 1.
	self
		assert: d equipes asArray
		equals: #(#(1 1) #(8 7) #(7 5) #(6 3) #(4 8) #(3 6) #(2 4)).
	d := Donne new numero: 16