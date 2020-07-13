private 
resultatsEO
	"
	
	"

	^ self fiche
		collect: [ :e | 
			100
				- ((self resultats at: e) first / (self resultats at: e) last round: 2)
				asFloat ]