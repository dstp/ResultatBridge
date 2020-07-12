topage
resultatsEO
	"
	
	"
	^ self fiche
		collect: [ :e | 100 - ((self resultats at: e) first / (self resultats at: e) last) asFloat ]