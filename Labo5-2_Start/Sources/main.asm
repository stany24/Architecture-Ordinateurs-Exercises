;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 5.2

;Modifications
;Date		Faite	Ctrl		Description
;
;------------------------------------------------------------
			INCLUDE derivative.inc
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

val:ds.b 1
diz:ds.b 1
unit:ds.b 1

 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici
BCD7SEG1: DC.B $3f,$06,$5b,$4f,$66,$6d,$7d,$07,$7f,$6f
BCD7SEG2: DC.B $7b,$0a,$b3,$9b,$ca,$d9,$f9,$0b,$fb,$db

_Startup:
Entry:
main:
        ; Vos initialisations ici
        mov.b #$FF,DDRADL
        mov.b #$FF,DDRS
        mov.b #$70,PTP
        
        mov.b #52,val
        clr D0;
        divu.bb D0,val,#10
        st D0,diz
        modu.bb D0,val,#10
        st D0,unit
        
        ld X,#BCD7SEG1
        ld Y,#BCD7SEG2
        
        ld D0,unit
        mov.b (D0,Y),PTADL
        ld D0,diz
        mov.b (D0,X),PTS
        
loop:
        ; Votre codes ici
       
		BRA 	loop     	; boucle infinie
