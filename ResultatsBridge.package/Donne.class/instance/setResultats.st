topage
setResultats
	"
	topage :	le 1er prend 100, le suivant 100 - 1*pas, le suivant 100 - 2*pas, ... le nieme 100 - (n-1)*pas. Avec pas = 100 / (nombre de résultats - 1).
	en cas d'ex-aequo, ils se partagent les pourcentages
	resultats est un dictionnaire scoreNS -> #(sumScore nbScore)
	"

	| f pas r |
	f := self fiche sorted: [ :a :b | b <= a ].	"create a copy"
	pas := 100 / (f size - 1).
	r := IdentityDictionary new.
	(f collectWithIndex: [ :e :idx | e -> (100 - (pas * (idx - 1))) ])
		do: [ :aAss | 
			r
				at: aAss key
				ifPresent: [ :v | 
					r
						at: aAss key
						put: (Array with: v first + aAss value with: v last + 1) ]
				ifAbsent: [ r at: aAss key put: (Array with: aAss value with: 1) ] ].
	^ r