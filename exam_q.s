@ Stage 2

.section .text
.align 2
.global _start

_start:
  eor r3, r3, r3 @clears r3
  mov r2, #10 @Current loop counter, Starts at 10
  mov r1, #50 @end point

_loop:
  add r2, #1 @Adds one ea/ time
  mov r3, r2 @copies to r3
  bl _output
  cmp r1, r2 @if it has reached end
  beq _end
  bne _loop

_output:
  tst r2, #7 @if multiple of 8
  beq _mul_eight
  mov pc, lr @returns to _loop

_mul_eight:
  mov r3, #0xffff
  mov pc, lr @return to _output



_end: b _end
