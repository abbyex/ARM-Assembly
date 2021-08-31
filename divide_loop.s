.global _start

_start:
  mov r1, #20
  mov r2, #5
  mov r3, #0

loop:
  cmp r1, r2
  blt end
  add r3, r3, #1
  sub r1, r1, r2
  bhi loop @ branch if r1 still < r2

_end: b _end
