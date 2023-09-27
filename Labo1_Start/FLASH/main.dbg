;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 1

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

VAR1: ds.b 1
VAR2: ds.w 1
VAR3: ds.l 1

;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

CONST1: dc.b 11
CONST2: dc.w $AA55
CONST3: dc.b $BB, $CC

main:
_Startup:
Entry:
		ld D0,CONST1	;load const1 in var1
 		st D0,VAR1
 		
 		ld D2,CONST2	;load const2 in var2
 		st D2,VAR2
 		
 		ld D2,CONST2	;load const3 in var3 pos 0 and 1
 		st D2,VAR3
 		
 		ld D2,CONST3	;load const3 in var3 pos 2 and 3
 		st D2,VAR3+2	;Var3 should be $AA, $55, $BB, $CC
 		
 		ld D6, VAR3		;Copy var3 to var2
 		st D6, VAR2		;var2 should be $AA, $55
 		
 		st D0,VAR3+3	;Copy var3 pos 3 to var1
 		st D0,VAR1		;var1 should be $CC
 		
loop:
		; Votre codes ici
   		
		BRA loop    	; boucle infinie

