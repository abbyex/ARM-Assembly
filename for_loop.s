.global _start

@ r0 = 0; initialised to 0
@ for (r0 = 0; r0 < 5; r0++)
@ r1 = r0;

_start:
  mov r0, #0
  mov r1, #0
  b _continue_loop

_loop:
  add r1, r0, #1

_continue_loop:
  cmp r0, #5
  blt _loop

end:
 mov r7, #1
 SWI 0
