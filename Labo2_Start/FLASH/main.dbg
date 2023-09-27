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
        
        mov.w buf1,D3 ; exchange first 2 byte of buf1 and buf2
        mov.w buf2,D4
        tfr D3,D2
        mov.w D2,buf2
        tfr D4,D2
        mov.w D2,buf1
        
        mov.w buf1+2,D3 ; exchange last 2 byte of buf1 and buf2
        mov.w buf2+2,D4
        tfr D3,D2
        mov.w D2,buf2+2
        tfr D4,D2
        mov.w D2,buf1+2
        
        mov.b const1,D0 ; load buf3 from const1
        mov.b D0,buf3
        add D0,#1
        mov.b D0,buf3+1
        add D0,#1
        mov.b D0,buf3+2
        add D0,#1
        mov.b D0,buf3+3
        
        mov.b const2,D0 ; load buf4 from const2
        mov.b D0,buf4
        add D0,#1
        mov.b D0,buf4+1
        add D0,#1
        mov.b D0,buf4+2
        add D0,#1
        mov.b D0,buf4+3
        
        mov.b buf3,D0 ; exchange the first byte of buf3 and buf4
        mov.b buf4,D1
        exg D0,D1
        mov.b D0,buf3
        mov.b D1,buf4
        
        mov.b buf3+1,D0 ; exchange the second byte of buf3 and buf4
        mov.b buf4+1,D1
        exg D0,D1
        mov.b D0,buf3+1
        mov.b D1,buf4+1
        
        mov.b buf3+2,D0 ; exchange the third byte of buf3 and buf4
        mov.b buf4+2,D1
        exg D0,D1
        mov.b D0,buf3+2
        mov.b D1,buf4+2
        
        mov.b buf3+3,D0 ; exchange the last byte of buf3 and buf4
        mov.b buf4+3,D1
        exg D0,D1
        mov.b D0,buf3+3
        mov.b D1,buf4+3
        
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
