;------------------------------------------------------------
;Copyright 2003-20xx Haute �cole ARC Ing�ni�rie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 2

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


main:
_Startup:
Entry:
        ld X,#$32F0
        ld D0,(5,X)
        ld D0,(-16,X)	
        ld D1,(-32,X)
        ld D1,(-160,X)
        ld X,(-260,X)
        
        ld D2,(-90,X)
        ld D2,(99,X)
        ld Y,(113,X)
        ld S,(,X)
        ld S,(-206,X)
        
        
loop:
		; Votre codes ici
		
		
		
		
		
		
		BRA loop          		; boucle infinie
