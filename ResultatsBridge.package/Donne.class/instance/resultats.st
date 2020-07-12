private 
resultats
	"
	un dictionnaire scoreNS -> #(sumScore nbScore)
	"

	^ resultats
		ifNil: [ resultats := self setResultats.
			 ]