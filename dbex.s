.section .data

x:
.word 0,0,0,0,9,9,0,1
y:
.word 0,0,0,0,0,1,0,5

.section .text
.global _start

_start:
  eor r3, r3, r3 @clear out r3
  mov r0, #8 @array size, counter
  ldr r1,=x
  ldr r1, [r1, #28]
  ldr r2,=y
  ldr r2, [r2, #28]
  mov r4, #28
  mov r5, #28

_loop:
  sub r0, #1
  add r3, r1, r2
  cmp r0, #0 @if the count is 0.
  beq _end
  eor r1, r1, r1
  eor r2, r2, r2
  sub r4, #4
  sub r5, #4
  ldr r1, [r1, r4]
  ldr r2, [r2, r5]
  bne _loop

_end: b _end
