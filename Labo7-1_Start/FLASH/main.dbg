;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge 27.10.2020

;But : Laboratoire 7.1

;Modifications
;Date		Faite	Ctrl		Description
;
;------------------------------------------------------------


;--------------------------------------------------------------
; Exportation des symboles
;--------------------------------------------------------------
	XDEF Entry,_Startup,main

;--------------------------------------------------------------
; Déclaration des constantes d'assemblage (équivalences)
;--------------------------------------------------------------
DDRP: EQU $02F2
DDRT: EQU $02C2
PTL: EQU $0331
PTT: EQU $02C0
DIENL: EQU $033C
LED1: EQU $04
LED2: EQU $08
LED3: EQU $10

;--------------------------------------------------------------
; Section pour les variables et les données --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM: SECTION


;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM: SECTION

n1:ds.b 1
n2:ds.b 1
n3:ds.b 1
n4:ds.b 1
Result:ds.w 1

; Début du programme (ces 2 labels sont utilisés par CodeWarrior)
_Startup:
Entry:
main:

	MOV.B #$00, DDRP
	MOV.B #$FC, DDRT
	MOV.B #$03, DIENL
		
		
; Boucle sans fin
loop:

	LD D0,PTL
	AND D0,#$03
	CMP D0, #%00
	BEQ load0
	CMP D0, #%01
	BEQ load1
	CMP D0, #%10
	BEQ load2
	BRA loop
		
Calcul:
	ld D0,n1
	ld D1,n2
	add D0,D1
	ld D1,n3
	sub D0,D1
	ld D1,n4
	mulu D2,D0,D1
	st D2,Result
	
	CMP D2,#$100
	BEQ egal
	BHI bigger
	BLO smaller
	
	BRA loop

egal:
	MOV.B #LED1,PTT
	BRA loop

bigger:
	MOV.B #LED2,PTT
	BRA loop

smaller:
	MOV.B #LED3,PTT
	BRA loop

load0:
	MOV.B #$96, n1
	MOV.B #$FA, n2
	MOV.B #$64, n3
	MOV.B #2, n4
	BRA Calcul
load1:
	MOV.B #$14, n1
	MOV.B #$28, n2
	MOV.B #$3C, n3
	MOV.B #4, n4
	BRA Calcul
load2:
	MOV.B #$78, n1
	MOV.B #$B4, n2
	MOV.B #$FA, n3
	MOV.B #2, n4
	BRA Calcul

