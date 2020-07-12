as yet unclassified
testPrint
	| t d |
	t := Tournoi new
		nbTables: 5;
		nouvellesDonnes: 30.
	d := t donneNumero: 5.
	self assert: (t numTable: d numero) equals: 1.
	d fiche: #(-430 -180 -400 50 50).
	self
		assert: d asString
		equals:
			'Donne numéro : 5
Paire NS  Paire EO  Score NS  Score EO  Note NS   Note EO   
1         1                   430       0.0       100.0     
5         4                   180       50.0      50.0      
4         2                   400       25.0      75.0      
3         5         50                  87.5      12.5      
2         3         50                  87.5      12.5      
'