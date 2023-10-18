;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 3 7seg

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

 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici
;              0   1   2   3   4   5   6   7   8   9   A   b   C   d   E   F
BCD7SEG: DC.B $3f,$06,$5B,$4f,$66,$6d,$7d,$07,$7f,$6f,$77,$7C,$39,$5E,$79,$71
MASK: DC.B $F0

main:
_Startup:
Entry:
        
		; Le port S en sortie --> 7 segments
		mov.b #$FF,DDRS
		; Le port P en entrée (bit 0 à 3) --> Interrupteur
		mov.b #$F0,DDRP
		
		; Choisir la version du programme
		ld X,#BCD7SEG
        bra  Affichage2 ; ou Affichage2
            
            
Affichage1:            
            ; Votre code ici ...
            ld D0,(X+)
            st D0,PTS
                 
            ; Recommence
            bra  Affichage1


Affichage2:            
            ; Votre code ici ...
            ld D0,PTP
			mov.b D1,(D0>>4)
			and D0,#$0f
			mov.b D0,(X,D1)
            st D0,PTS
            
            ; Recommence
            bra  Affichage2
        
