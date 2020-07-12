printing
printResultatsTour: anInteger
	"
	
	"

	^ '' join: ((self resultatsTour: anInteger)
		collect: [ :n | n asString padRightTo: 10 ])