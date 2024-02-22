;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 6.3

;Modifications
;Date		Faite	Ctrl		Description
;
;------------------------------------------------------------

;--------------------------------------------------------------
; Exportation des symboles
;--------------------------------------------------------------
            XDEF Entry,_Startup,main

;--------------------------------------------------------------
; Déclaration des constantes d'assemblage
;--------------------------------------------------------------
; Vos déclarations de constantes d'assemblage ici



;--------------------------------------------------------------
; Section pour les variables et les données --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM:     SECTION

; Vos déclarations de données ici

 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici



_Startup:
Entry:
main:
		ld s,#$1401
        ; Vos initialisations ici

loop:
        ; Votre codes ici
        ld d0,#4
		psh d0
		ld d0,#6
		psh d0
		ld d0,#8
		psh d0
		ld d2,#0
		psh d2
		
		bsr Add
		
		bra loop     	; boucle infinie
		
Add:
	psh d0
	psh d2
	
	ld.b d0,(10,s)
	add d2,d0
	ld.b d0,(9,s)
	add d2,d0
	ld.b d0,(8,s)
	add d2,d0
	st d2,(6,s)
	
	pul d2
	pul d0
	rts

		
