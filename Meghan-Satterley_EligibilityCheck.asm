;Meghan Satterley
;CSIS250
;Spring 2022
;This program simulates an eligibility checker, asking for residency, gender and age
;those who live in MO or KS, are male or female and are 65 years or older are eligible


TITLE Eligibility Check	(Meghan-Satterley_EligibilityCheck.asm)

INCLUDE Irvine32.inc

.data

;set buffer size for string input - fill with nulls
;declare necessary prompt and display lines

buffer	 	BYTE	21  DUP(0)   
description		BYTE	0Dh,0Ah,"Residence <State code>, Gender <M/F>, Age - Q to Quit",0
notEligibleMsg	BYTE	0Dh,0Ah,"Not eligible for program.",0
eligibleMsg		BYTE	0Dh,0Ah,"Eligible for program.",0
statePrompt		BYTE	0Dh,0Ah,"Residence - MO or KS:  ",0
genderPrompt	BYTE	0Dh,0Ah,"  Enter Gender - M/F:  ",0
agePrompt		BYTE	0Dh,0Ah,"    Age of Applicant:  ",0

.code
main PROC

	mov  edx,OFFSET description ;display description 
	call WriteString
	call Crlf

StateCode:
	
	mov  edx,OFFSET statePrompt ;prompt user for state code
	call WriteString
	mov  edx,OFFSET buffer
	mov  ecx,SIZEOF buffer
	call ReadString

	mov  bh,buffer		;move first character of the buffer into high byte of 16 bit register
	and  bh,11011111b		;make character uppercase
	
	mov  bl,(buffer+1)	;move second character of the buffer into low order bits
	and  bl,11011111b		;make character uppercase

	cmp  bh,'Q'			;if value is Q program quits
	je   ExitCode
	cmp  bh,'M'			;if MO jump to clear line 1 and continue program
	cmp  bl,'O'
	je   ClearLine1
	cmp  bh,'K'			;if KS jump to clear line 1 and continue program
	cmp  bl,'S'
	je   ClearLine1
	
	jmp  StateCode		;if not MO or KS repeat loop

ClearLine1:

	call Crlf

GenderCode:

	mov  edx,OFFSET genderPrompt ;prompt user for gender
	call WriteString
	call ReadChar
	and  al,11011111b		;make character uppercase
	call WriteChar
	call Crlf
	
	cmp  al,"Q"			;if value is Q program quits
	je   ExitCode
	cmp  al,"F"			;if F jump to clear line 2 and continue program
	je   ClearLine2
	cmp  al,"M"			;if M jump to clear line 2 and continue program
	je   ClearLine2

	jmp  GenderCode		;if not M or F repeat loop

ClearLine2:

	call Crlf

AgeCode:

	mov  edx,OFFSET agePrompt ;prompt user for age
	call WriteString
	call ReadInt

	cmp  eax,0
	jl   AgeCode		;if value is less than zero loop question
	cmp  eax,0			
	je   ExitCode		;if value is zero quit program		
	cmp  eax,64
	jg   EligibleCode		;if value is greater than 64 jump to eligible code
	cmp  eax,64
	jle  NotEligibleCode	;if value is less than or equal to 64 jump to not eligible code

EligibleCode:

	call Crlf
	mov  edx,OFFSET eligibleMsg	;display eligible message
	call WriteString
	call Crlf

	jmp  ExitCode

NotEligibleCode:

	call Crlf
	mov  edx,OFFSET notEligibleMsg	;display not eligible message
	call WriteString
	call Crlf
	
ExitCode:

	call Crlf
	call WaitMsg
	exit



main ENDP

END main