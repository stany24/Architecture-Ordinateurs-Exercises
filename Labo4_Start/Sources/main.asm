;------------------------------------------------------------
;Copyright 2003-20xx Haute �cole ARC Ing�ni�rie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 4

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
V1:ds.l 1 
V2:ds.l 1 
V3:ds.l 1 
RES:ds.l 2 

N1:ds.w 1
N2:ds.w 1
N3:ds.w 1
N4:ds.b 3
 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici


_Startup:
main:
Entry:
	bra exercice2_4
        

exercice2_3:
	;instanciation
    ld D6,#$AABBCCDD
    st D6,V1
    ld D6,#$99887766
    st D6,V2
    ld D6,#$FFFFFFFF
    st D6,V3
    
    ;clearing
    clr D0
    clr.l RES
    clr.l RES+1
    
    ;addition
    add D6,V2
    adc D0,#0
    add D6,V3
    adc D0,#0
    st D6,RES+4
    st d0,RES+3

exercice2_4:
	;instanciation
	ld D2,#$AA
   	st D2,N1
   	ld D2,#$AA
   	st D2,N2
   	ld D2,#$AA
   	st D2,N3
   	
   	;clearing
   	clr D0
   	
   	;resolution
   	ld D2,N1
   	add D2,N2
   	adc D0,#0
   	sub D2,N3
   	sbc D0,#0
   	st D2,N4+1
   	st D0,N4

loop:
        ; Votre codes ici
		BRA loop     	; boucle infinie
