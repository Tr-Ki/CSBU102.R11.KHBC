Name: Phan Trung Kien

Student ID: 26560035

Purpose: Experiment 1 - Base plus offset address computation

Register plan:

$s0 = base address of the scores array

$s1 = computed base address with offset 8

$t0, $t1,$t2, $t3,$t4 = temporary registers to hold loaded values

.data
scores: .word 40, 55, 70, 85, 100

.text
.globl main
main:
la   $s0, scores      # $s0 = address of scores[0]
lw   $t0, 0($s0)      # (1)
lw   $t1, 4($s0)      # (2)
lw   $t2, 16($s0)     # (3)

addi $s1,$s0, 8      # (4) $s1 =$s0 + 8

lw   $t3, 0($s1)      # (5)
lw   $t4, -4($s1)     # (6)

li   $v0, 10
syscall
