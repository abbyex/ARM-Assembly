@ a * d - b * c
.section .text
.balign 2

.global _start

_start:
  ldr r0, =matrix
  ldr r1, [r0] @ value of A
  ldr r2, [r0, #12] @value of D
  str r3, [r1, r0, lsl #4] @ r1 * r0 = r2

  ldr r4, [r0, #4] @value of B
  ldr r5, [r0, #8] @ value of C
  str r6, [r4, r5, lsl #4] @ r4 * r3 = r5

  subs r6, r3

end: b _end

.section .data
matrix:
.word 1,2,3,4
