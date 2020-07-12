as yet unclassified
setEquipes
	"
	je retourne les equipes qui me jouent suivant les tours
	OrderedCollection { #(numEquipeNS numEquipeEO) ... }
	"

	| numT nbT aOC numSaut |
	numT := self tournoi numTable: self numero.
	nbT := self tournoi nbTables.
	numSaut := nbT even
		ifTrue: [ nbT // 2 ]
		ifFalse: [ 0 ].
	aOC := OrderedCollection new.
	aOC add: (Array with: numT with: numT).
	^ (1 to:
		nbT - 1
			-
				(nbT even
					ifTrue: [ 1 ]
					ifFalse: [ 0 ]))
		inject: aOC
		into: [ :res :i | 
			| pre saut |
			saut := i = numSaut
				ifTrue: [ 1 ]
				ifFalse: [ 0 ].
			pre := res last.
			res
				add:
					(Array
						with: ((1 to: nbT) atWrap: pre first - 1 - saut)
						with: ((1 to: nbT) atWrap: pre last - 2 - saut));
				yourself ]