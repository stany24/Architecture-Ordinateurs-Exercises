;------------------------------------------------------------
;Copyright 2003-20xx Haute �cole ARC Ing�ni�rie, Switzerland. 
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
; D�claration des constantes d'assemblage
;--------------------------------------------------------------
; Vos d�clarations de constantes d'assemblage ici
PTP:equ $2F0
DDRP:equ $2F2


;--------------------------------------------------------------
; Section pour les variables et les donn�es --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM:     SECTION

; Vos d�clarations de donn�es ici
var0:bs.b 1

 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici



_Startup:
main:
Entry:
        ; Vos initialisations ici
        mv $07,DDRP

loop:
        ; Votre codes ici
		

		
		bra loop     	; boucle infinie
		
		


		
