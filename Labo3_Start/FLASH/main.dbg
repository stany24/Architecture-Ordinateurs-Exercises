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
		;Exercice 2
		mov.l data1,buf1
        mov.l data2,buf2
        
        ld D0,buf1
        mov.b buf2,buf1
        st D0,buf2
        
        ld D0,buf1+1
        mov.b buf2+1,buf1+1
        st D0,buf2+1
        
        ld D0,buf1+2
        mov.b buf2+2,buf1+2
        st D0,buf2+2
        
        ld D0,buf1+3
        mov.b buf2+3,buf1+3
        st D0,buf2+3
        
        ld D0,const1
        mov.b D0,buf3
        add D0, #1
        mov.b D0,buf3+1
        add D0, #1
        mov.b D0,buf3+2
        add D0, #1
        mov.b D0,buf3+3
        
        ld D0,const2
        mov.b D0,buf4
        add D0, #1
        mov.b D0,buf4+1
        add D0, #1
        mov.b D0,buf4+2
        add D0, #1
        mov.b D0,buf4+3
        
        ld D0,buf3
        mov.b buf4,buf3
        st D0,buf4
        
        ld D0,buf3+1
        mov.b buf4+1,buf3+1
        st D0,buf4+1
        
        ld D0,buf3+2
        mov.b buf4+2,buf3+2
        st D0,buf4+2
        
        ld D0,buf3+3
        mov.b buf4+3,buf3+3
        st D0,buf4+3

		;Exercice 4
        ld X,#$32F0
        ld D0,(5,X)
        ld D0,(-16,X)
        ld D1,(-32,X)
        ld D1,(-160,X)
        ld X,(-260,X)
        
        ld D2,(-90,X)
        ld D2,(99,X)
        ld Y,(113,X)
        ld S,(17,X)
        ld S,(-206,X)
        
        
loop:
		; Votre codes ici
		
		BRA loop          		; boucle infinie
