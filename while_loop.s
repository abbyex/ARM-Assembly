.global _start

@ r0 = 0
@ r1 = 1
@ while(r0 <= 10) :
@ r0 = r0 + 1

_start:
  mov r0, #0
  mov r1, #1
  b _continue_loop

_loop:
  add r0, r0, r1

_continue_loop:
  cmp r0, #9
  ble _loop @ branch if less than or equal to

end:
  mov r7, #1
  SWI 0
