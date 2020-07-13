converting
asString
	| aStream|
	aStream := '' writeStream .
	aStream
		nextPutAll: 'Donne numéro : ';
		nextPutAll: self numero asString;
		cr;
		nextPutAll: 'Paire NS  Paire EO  Score NS  Score EO  Note NS   Note EO   ';
		cr.
	1 to: self equipes size do: [ :i | 
		aStream
			nextPutAll: (self printResultatsTour: i);
			cr ].
	^ aStream  contents