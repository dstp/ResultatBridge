Class part: Je représente un tournoi de bridge.

Responsibility part: 
- my main responsibilities: Déterminer la table ou se trouve une donne au premier tour, intialiser les donnes
- what I do: Je calcule le nombre de donnes par table 
- what I know: Le nombre de tables et de donnes

Collaborators Part: 
- state my main collaborators: Donne
- how I interact with them: 

Public API and Key Messages
- messages
 nbDonnesParTable. retourne le nombre de donnes par table
 numTable: numdonne. retourne le numéro de la table ou se trouve numDonne au premier tour
- how to create instances. 
 new initialise le tournoi pour 8 tables et 32 donnes
 new: nTables nbDonnes: nbDonnes 
 
Internal Representation and Key Implementation Points.
- Instance Variables
 nbDonnes: nombre de donnes
 nbTables: nombre de tables
 nbDonnesParTable: nombre de donnes par table
- Implementation Points
