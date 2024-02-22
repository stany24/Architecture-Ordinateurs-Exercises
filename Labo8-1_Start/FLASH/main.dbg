;------------------------------------------------------------
;Copyright 2003-20xx Haute école ARC Ingéniérie, Switzerland.
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier : main.asm

;But : Laboratoire 8.1 do while()

;Version:
; - OGL/14.09.21 création
;
;------------------------------------------------------------

;--------------------------------------------------------------
; Exportation des symboles
;--------------------------------------------------------------
	XDEF Entry,_Startup,main

;--------------------------------------------------------------
; Déclaration des constantes d'assemblage (équivalences)
;--------------------------------------------------------------
DDRT:	EQU	$02C2	; adresse de DDRT
PTT:	EQU $02C0	; adresse de PTT

;--------------------------------------------------------------
; Section pour les variables et les données --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM: SECTION

Counter:ds.l 1
i:ds.b 1

;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM: SECTION
;                 0   1   2   3   4   5   6   7   8   9   10  11
STATELED: 	DC.B $04,$0C,$1C,$3C,$7C,$FC,$7C,$3C,$1C,$0C,$04,$00
STATENUMBER: EQU $0c
FINALSTATE: EQU STATELED+STATENUMBER


; Début du programme (ces 2 labels sont utilisés par CodeWarrior)
_Startup:
main:
Entry:
		ld d7,#0
		st d7,Counter
		ld d0,#1
		st d0,i
		ld X,STATELED
		BRA Start
Start:
		BRA loop
loop:
		ld d6,Counter
		inc d6
		st d6,Counter
		CMP D6,#300000
		BLT loop
		MOV.B (X+),PTT
		BRA Start
