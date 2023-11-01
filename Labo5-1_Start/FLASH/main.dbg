;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 5.1

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
somme:ds.w 1 
moyenne:ds.b 1 
 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici
numbers:dc.b 61, 200, 47, 188,26

_Startup:
Entry:
main:
        ; Vos initialisations ici
     	ld D0,numbers
     	add D0,numbers+1
     	adc D1,#0
     	add D0,numbers+2
     	adc D1,#0
     	add D0,numbers+3
     	adc D1,#0
     	add D0,numbers+4
     	adc D1,#0
     	st D1,somme
     	st D0,somme+1
     	divu.ww D2,somme,#$0005
     	st D2,moyenne
        
loop:
        ; Votre codes ici
           	
       	
        
		BRA loop     	; boucle infinie
