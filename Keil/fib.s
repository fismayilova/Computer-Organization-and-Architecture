	AREA TEST1, CODE  
	ENTRY 
	MOV R0, #0	; Entering first element in a sequence
	MOV R1, #1	; Second element 
	MOV R8, #0x37	; i created this variable to set it as the boundary of the loop
	BL FIB		; entering the function
			; i did not add stop B stop because in this case when entering the debug mode and stepping over the loop you can see how it works 
FIB			; starting the function 
WHILE			; entering the loop
	CMP R1, R8	; if reaches the previously set variable then exits the loop
	BEQ DONE
	ADD R2, R0, R1	; assigning addition of r0 and r1 to r2
	MOV R0, R1	; moving the value of r1 into r0
	MOV R1, R2	; moving the value of r2 into r1
	B WHILE		; continue the loop
	BX LR		; exits the function 
DONE
	END