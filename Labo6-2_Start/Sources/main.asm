;------------------------------------------------------------
;Copyright 2003-20xx Haute �cole ARC Ing�ni�rie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 6.2

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
DDRT:equ $2C2
PTT:equ $2C0


;--------------------------------------------------------------
; Section pour les variables et les donn�es --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM:     SECTION

; Vos d�clarations de donn�es ici
var1:ds.b 1

 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici
 


_Startup:
main:
Entry:
        ; Vos initialisations ici
        mov.b #$fc,DDRT
        
loop:
        ; Votre codes ici
        ;3
        ld d0,#$04
        st d0,var1
        mov.b d0,PTT
        lsl d0,d0,#$3
       	mov.b d0,PTT
       	
       	ld d0,#$04
        st d0,var1
        asl d0,d0,#$3
       	mov.b d0,PTT
       	;4.1
       	ld d0,#$80
        st d0,var1
        mov.b d0,PTT
        lsr d0,d0,#$3
       	mov.b d0,PTT
       	
       	ld d0,#$80
        st d0,var1
        mov.b d0,PTT
        asr d0,d0,#$3
       	mov.b d0,PTT
       	
       	;4.2
       	ld d0,#$84
        st d0,var1
        mov.b d0,PTT
        rol.b d0
        rol.b d0
        rol.b d0
       	mov.b d0,PTT
       	
       	ld d0,#$84
        st d0,var1
        mov.b d0,PTT
        ror.b d0
        ror.b d0
        ror.b d0
       	mov.b d0,PTT
        
		bra loop     	; boucle infinie
