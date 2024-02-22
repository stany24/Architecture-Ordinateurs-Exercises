;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 10.1

;Modifications
;Date		Faite	Ctrl		Description
;
;------------------------------------------------------------

;--------------------------------------------------------------
; Exportation des symboles
;--------------------------------------------------------------
            XDEF Entry,_Startup

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
        ; Vos initialisation ici
     

loop:
        ; Votre codes ici
		

		
		bra loop     	; boucle infinie
		
		


		
