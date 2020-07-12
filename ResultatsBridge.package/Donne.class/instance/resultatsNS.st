topage
resultatsNS
	"
	
	"
	^ self fiche
		collect: [ :e | ((self resultats at: e) first / (self resultats at: e) last) asFloat ]