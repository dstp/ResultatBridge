initialization-data
nouvellesDonnes: anInteger
	donnes := OrderedCollection new.
	1 to: anInteger
		do: [ :n | 
			| d |
			d := Donne new: n.
			d tournoi: self.
			donnes add: d ]