	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function
.L5:	
	mov r5 , #0
	mov r2 , #1
	b .L3

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}
	
	@ set fibonacci loop	
	mov r5 , r0

	@ init fibonacci
	mov r0 , #0
	mov r1 , #1
	mov r2 , #0

	cmp r5 , #1
	beq .L5
	cmp r5 , #0
	beq .L4
	sub r5 , #1
.L3:	
	cmp r5 , #0
	beq .L4

	add r2 , r0 , r1
	mov r0 , r1
	mov r1 , r2
	sub r5 , r5 , #1
	
	
	b .L3		
.L4:	
	mov r0 , r2
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end

