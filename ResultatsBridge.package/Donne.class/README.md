Class part: Je représente une donne.

Responsibility part: 
- my main responsibilities: Je stocke ma fiche ambulante et fournis les pourcentages de chaque équipe.
- what I do: Je calcule les pourcentages de chaque équipe 
- what I know: La fiche ambulante de la donne

Collaborators Part: 
- state my main collaborators: Tournoi
- how I interact with them: pour déterminer les équipes qui me jouent aux différents tours

Public API and Key Messages
- messages
 fiche: anArray. anArray: liste des scores obtenus par les équipes de la ligne NS   
 resultatsEO. retourne la liste des pourcentages calculés pour les équipes de la ligne EO
 resultatsNS. retourne la liste des pourcentages calculés pour les équipes de la ligne NS
- how to create instances.
 
Internal Representation and Key Implementation Points.
- Instance Variables
 fiche: an OrderedCollection des scores obtenus par les équipes de la ligne NS
 resultats: an IdentityDictionnary score -> #(sumPct nbEx)
- Implementation Points
