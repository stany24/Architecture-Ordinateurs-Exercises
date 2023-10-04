;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
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
; Déclaration des constantes d'assemblage
;--------------------------------------------------------------
; Vos déclarations de constantes d'assemblage ici

val1: EQU $A5
val2: EQU $AA
mask_strong: EQU %11110000
mask_weak: EQU %00001111

;--------------------------------------------------------------
; Section pour les variables et les données --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM:     SECTION

; Vos déclarations de données ici

buf1: ds.l 1
buf2: ds.l 1
buf3: ds.l 1
buf4: ds.l 1
 
;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM:     SECTION

; Vos constantes ici
data1: DC.B $1,$2,$3,$4
data2: DC.B $5,$6,$7,$8
const1: DC.B 12
const2: DC.B 21

main:
_Startup:
Entry:
        mov.l data1,buf1 ; loading buffers with datas
        mov.l data2,buf2
        
        ld D3,buf1 ; exchange first 2 byte of buf1 and buf2
        ld D4,buf2
        tfr D3,D2
        st D2,buf2
        tfr D4,D2
        st D2,buf1
        
        ld D3,buf1+2 ; exchange last 2 byte of buf1 and buf2
        ld D4,buf2+2
        tfr D3,D2
        st D2,buf2+2
        tfr D4,D2
        st D2,buf1+2
        
        ld D0,const1 ; load buf3 from const1
        st D0,buf3
        add D0,#1
        st D0,buf3+1
        add D0,#1
        st D0,buf3+2
        add D0,#1
        st D0,buf3+3
        
        ld D0,const2 ; load buf4 from const2
        st D0,buf4
        add D0,#1
        st D0,buf4+1
        add D0,#1
        st D0,buf4+2
        add D0,#1
        st D0,buf4+3
        
        ld D0,buf3 ; exchange the first byte of buf3 and buf4
        ld D1,buf4
        exg D0,D1
        st D0,buf3
        st D1,buf4
        
        ld D0,buf3+1 ; exchange the second byte of buf3 and buf4
        ld D1,buf4+1
        exg D0,D1
        st D0,buf3+1
        st D1,buf4+1
        
        ld D0,buf3+2 ; exchange the third byte of buf3 and buf4
        ld D1,buf4+2
        exg D0,D1
        st D0,buf3+2
        st D1,buf4+2
        
        ld D0,buf3+3 ; exchange the last byte of buf3 and buf4
        ld D1,buf4+3
        exg D0,D1
        st D0,buf3+3
        st D1,buf4+3
        
        ld D0,#(val1|val2)
        ld D0,#(val1&val2)
        ld D0,#(val1^val2)
        ld D0,#(val1<<2)
        ld D0,#(val1&mask_weak)
        ld D0,#(val2&mask_strong)
       	ld D0,#(val1<<4|val1>>4)
        
loop:
		; Votre codes ici
		
		
		
		
		
		
		BRA loop          		; boucle infinie
