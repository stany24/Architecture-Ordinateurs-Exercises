;------------------------------------------------------------
;Copyright 2003-2011 Haute �cole ARC Ing�ni�rie, Switzerland. 
;All rights reserved.
;------------------------------------------------------------
;Nom du fichier :	main.asm
;Auteur et Date :	Monnerat Serge

;But : Laboratoire 9

;Modifications
;Date		Faite	Ctrl		Description
;
;------------------------------------------------------------

;--------------------------------------------------------------
; Exportation des symboles
;--------------------------------------------------------------
	XDEF Entry,_Startup,main

;--------------------------------------------------------------
; D�claration des constantes d'assemblage (�quivalences)
;--------------------------------------------------------------

SWITCH_DIR: EQU $02F2
SWITCH_VAL: EQU $02F0
RGB_VAL: 	EQU $02F0
BP_EN: 		EQU $033c
BP_VAL:		EQU $0331
DS1_DIR:	EQU $02D2
DS1_VAL:	EQU $02D0

RED:		Equ $60
GREEN:		EQU $50
BLUE:		EQU $30
OFF:		EQU $70


;--------------------------------------------------------------
; Section pour les variables et les donn�es --> zone de RAM
;--------------------------------------------------------------
DEFAULT_RAM: SECTION
Compteur: ds.b 1
S1old ds.b 1
S2old ds.b 1


;--------------------------------------------------------------
; Section pour le code et les constante --> zone de ROM
;--------------------------------------------------------------
DEFAULT_ROM: SECTION
; DS1          			DS2
; 0 : %0011'1111 $3F	0 : %0111'1011 $7B 
; 1 : %0000'0110 $06	1 : %0000'1010 $0A
; 2 : %0101'1011 $5B	2 : %1011'0011 $B3
; 3 : %0100'1111 $4F	3 : %1001'1011 $9B
; 4 : %0110'0110 $66	4 : %1100'1010 $CA
; 5 : %0110'1101 $6D	5 : %1101'1001 $D9
; 6 : %0111'1101 $7D 	6 : %1111'1001 $F9
; 7 : %0000'0111 $07	7 : %0000'1011 $0B
; 8 : %0111'1111 $7F	8 : %1111'1011 $FB
; 9 : %0110'1111 $6F	9 : %1101'1011 $DB
; A : %0111'0111 $77	A : %1110'1011 $EB
; b : %0111'1100 $7D	b : %1111'1000 $F8
; C : %0011'1001 $39	C : %0111'0001 $71
; d : %0101'1110 $5E	d : %1011'1010 $BA
; E : %0111'1001 $7E	E : %1111'0001 $F1
; F : %0111'0001 $71	F : %1110'0001 $E1
;           	  0   1   2   3   4   5   6   7   8   9   A   b   C   d   E   F 
DS1SEG: 	DC.B $3F,$06,$5B,$4F,$66,$6D,$7D,$07,$7f,$6F,$77,$7C,$39,$5E,$79,$71

; D�but du programme (ces 3 labels sont utilis�s par CodeWarrior)
_Startup:
main:
Entry:
	ld d0,$0F
	st d0,SWITCH_DIR
		
ReadS1:

Increment:
	ld d0,Compteur
	inc d0
	st d0,Compteur
	ld X,#RGB_VAL
	st X,RED

ReadS2:
		
Decrement:
	ld d0,Compteur
	dec d0
	st d0,Compteur
	ld X,#RGB_VAL
	st X,GREEN

ReadSW1:

Reset:
	ld d0,$00
	st d0,Compteur
	ld X,#RGB_VAL
	st X,BLUE


Affichage:
		
; Boucle principale		
loop:
		; Votre code ici
		
		
		
		
		BRA		loop
		
