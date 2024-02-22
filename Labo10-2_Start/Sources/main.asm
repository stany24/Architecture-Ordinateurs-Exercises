;------------------------------------------------------------
;Copyright 2003-20xx Haute �cole ARC Ing�ni�rie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 10.2

;Modifications
;Date		Faite	Ctrl		Description
;
;------------------------------------------------------------

;--------------------------------------------------------------
; Exportation des symboles
;--------------------------------------------------------------
            XDEF Entry,_Startup,main

;--------------------------------------------------------------
; D�claration des constantes d'assemblage
;--------------------------------------------------------------
; Vos d�clarations de constantes d'assemblage ici



;--------------------------------------------------------------
; Section pour les variables et les donn�es --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM:     SECTION

; Vos d�clarations de donn�es ici

 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici



_Startup:
Entry:
main:
		ld s,#$1401
		ld d0,#12
		ld d1,#4
        ; Vos initialisations ici

loop:
        ; Votre codes ici
		bsr Average
		
		bra loop     	; boucle infinie

Average:
	bsr Sum
	divu.b d0,d0,#2
	rts

Sum:
	add d0,d1
	rts
