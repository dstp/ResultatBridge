as yet unclassified
resultatsTour: anInteger
	"
	je retourne le résultat pour le tour précisé
	Array #( eqNS eqEO scoreNS scoreEO noteNS noteEO )
	"

	| eq score aOC |
	aOC := OrderedCollection new.
	eq := self equipes at: anInteger.
	aOC addAll: eq.
	score := self fiche at: anInteger.
	aOC
		addAll:
			(score < 0
				ifTrue: [ Array with: '' with: score abs ]
				ifFalse: [ Array with: score with: '' ]).
	aOC add: (self resultatsNS asArray at: anInteger).
	aOC add: (self resultatsEO asArray at: anInteger).
	^ aOC asArray