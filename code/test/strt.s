# 0 "start.s"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/mips64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "start.s"
# 10 "start.s"
# 1 "../userprog/syscall.h" 1
# 16 "../userprog/syscall.h"
# 1 "../lib/copyright.h" 1
# 17 "../userprog/syscall.h" 2
# 1 "/usr/mips64-linux-gnu/include/errno.h" 1 3
# 25 "/usr/mips64-linux-gnu/include/errno.h" 3
# 1 "/usr/mips64-linux-gnu/include/features.h" 1 3
# 392 "/usr/mips64-linux-gnu/include/features.h" 3
# 1 "/usr/mips64-linux-gnu/include/features-time64.h" 1 3
# 20 "/usr/mips64-linux-gnu/include/features-time64.h" 3
# 1 "/usr/mips64-linux-gnu/include/bits/wordsize.h" 1 3
# 18 "/usr/mips64-linux-gnu/include/bits/wordsize.h" 3
# 1 "/usr/mips64-linux-gnu/include/sgidefs.h" 1 3
# 19 "/usr/mips64-linux-gnu/include/bits/wordsize.h" 2 3
# 21 "/usr/mips64-linux-gnu/include/features-time64.h" 2 3
# 1 "/usr/mips64-linux-gnu/include/bits/timesize.h" 1 3
# 19 "/usr/mips64-linux-gnu/include/bits/timesize.h" 3
# 1 "/usr/mips64-linux-gnu/include/bits/wordsize.h" 1 3
# 20 "/usr/mips64-linux-gnu/include/bits/timesize.h" 2 3
# 22 "/usr/mips64-linux-gnu/include/features-time64.h" 2 3
# 393 "/usr/mips64-linux-gnu/include/features.h" 2 3
# 514 "/usr/mips64-linux-gnu/include/features.h" 3
# 1 "/usr/mips64-linux-gnu/include/gnu/stubs.h" 1 3
# 35 "/usr/mips64-linux-gnu/include/gnu/stubs.h" 3
# 1 "/usr/mips64-linux-gnu/include/gnu/stubs-n64_hard.h" 1 3
# 36 "/usr/mips64-linux-gnu/include/gnu/stubs.h" 2 3
# 515 "/usr/mips64-linux-gnu/include/features.h" 2 3
# 26 "/usr/mips64-linux-gnu/include/errno.h" 2 3


# 1 "/usr/mips64-linux-gnu/include/bits/errno.h" 1 3
# 25 "/usr/mips64-linux-gnu/include/bits/errno.h" 3
# 1 "/usr/mips64-linux-gnu/include/linux/errno.h" 1 3
# 1 "/usr/mips64-linux-gnu/include/asm/errno.h" 1 3
# 16 "/usr/mips64-linux-gnu/include/asm/errno.h" 3
# 1 "/usr/mips64-linux-gnu/include/asm-generic/errno-base.h" 1 3
# 17 "/usr/mips64-linux-gnu/include/asm/errno.h" 2 3
# 2 "/usr/mips64-linux-gnu/include/linux/errno.h" 2 3
# 26 "/usr/mips64-linux-gnu/include/bits/errno.h" 2 3
# 29 "/usr/mips64-linux-gnu/include/errno.h" 2 3
# 18 "../userprog/syscall.h" 2
# 11 "start.s" 2

        .text
        .align 2
# 24 "start.s"
 .globl __start
 .ent __start
__start:
 jal main
 move $4,$0
 jal Exit
 .end __start
# 45 "start.s"
 .globl Halt
 .ent Halt
Halt:
 addiu $2,$0,0
 syscall
 j $31
 .end Halt

 .globl Add
 .ent Add
Add:
 addiu $2,$0,42
 syscall
 j $31
 .end Add

 .globl Exit
 .ent Exit
Exit:
 addiu $2,$0,1
 syscall
 j $31
 .end Exit

 .globl Exec
 .ent Exec
Exec:
 addiu $2,$0,2
 syscall
 j $31
 .end Exec

 .globl ExecV
 .ent ExecV
ExecV:
 addiu $2,$0,14
 syscall
 j $31
 .end ExecV

 .globl Join
 .ent Join
Join:
 addiu $2,$0,3
 syscall
 j $31
 .end Join

 .globl Create
 .ent Create
Create:
 addiu $2,$0,4
 syscall
 j $31
 .end Create

 .globl Remove
 .ent Remove
Remove:
 addiu $2,$0,5
 syscall
 j $31
 .end Remove

 .globl Open
 .ent Open
Open:
 addiu $2,$0,6
 syscall
 j $31
 .end Open

 .globl Read
 .ent Read
Read:
 addiu $2,$0,7
 syscall
 j $31
 .end Read

 .globl Write
 .ent Write
Write:
 addiu $2,$0,8
 syscall
 j $31
 .end Write

 .globl Close
 .ent Close
Close:
 addiu $2,$0,10
 syscall
 j $31
 .end Close

 .globl Seek
 .ent Seek
Seek:
 addiu $2,$0,9
 syscall
 j $31
 .end Seek

 .globl Delete
 .ent Delete
Delete:
        addiu $2,$0,11
 syscall
 j $31
 .end Delete

        .globl ThreadFork
        .ent ThreadFork
ThreadFork:
        addiu $2,$0,12
        syscall
        j $31
        .end ThreadFork

        .globl ThreadYield
        .ent ThreadYield
ThreadYield:
        addiu $2,$0,13
        syscall
        j $31
        .end ThreadYield

 .globl ThreadExit
 .ent ThreadExit
ThreadExit:
 addiu $2, $0, 15
 syscall
 j $31
 .end ThreadExit

 .globl ThreadJoin
 .ent ThreadJoin
ThreadJoin:
 addiu $2, $0, 16
 syscall
 j $31
 .end ThreadJoin

 .globl getSpaceID
 .ent getSpaceID
getSpaceID:
 addiu $2,$0,17
 syscall
 j $31
 .end getSpaceID

 .globl getThreadID
 .ent getThreadID
getThreadID:
 addiu $2,$0,18
 syscall
 j $31
 .end getThreadID

 .globl Ipc
 .ent Ipc
Ipc:
     addiu $2,$0,19
 syscall
 j $31
 .end Ipc

 .globl Clock
 .ent Clock
Clock:
 addiu $2,$0,20
 syscall
 j $31
 .end Clock



 .globl Square
 .ent Square
Square:
 addiu $2,$0,43
 syscall
 j $31
 .end Square

 .globl Max
 .ent Max
Max:
 addiu $2,$0,44
 syscall
 j $31
 .end Max



        .globl __main
        .ent __main
__main:
        j $31
        .end __main
