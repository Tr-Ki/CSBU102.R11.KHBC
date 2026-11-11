Name: Phan Trung Kien

Student ID: 26560035

Purpose: Experiment 2 - Modify an element with own data and calculate total score

Register plan:

$s0 = address of scores[0]

$s1 = index k

$s3 = total sum of scores

$t0 = new score V

$t1 = calculated memory address of scores[k]

$t4-$t8 = temporary registers to load the five scores

.data
scores: .word 40, 55, 70, 85, 100
msg_total: .asciiz "Total: "
nl:     .asciiz "\n"

.text
.globl main
main:
la   $s0, scores      # $s0 = address of scores[0]

# (1) Put k=0 in $s1 and V=62 in$t0, and store into scores[k]
addi $s1,$zero, 0    # k = 0
addi $t0,$zero, 62   # V = 62
sll  $t1, $s1, 2      # $t1 = 4 * k
add  $t1,$t1, $s0    # $t1 = address of scores[k]
sw   $t0, 0($t1)      # scores[k] = V

# (2) Add up the five scores in $s3
lw   $t4, 0($s0)      # load scores[0]
lw   $t5, 4($s0)      # load scores[1]
lw   $t6, 8($s0)      # load scores[2]
lw   $t7, 12($s0)     # load scores[3]
lw   $t8, 16($s0)     # load scores[4]

add  $s3, $t4,$t5
add  $s3, $s3,$t6
add  $s3, $s3,$t7
add  $s3, $s3,$t8

# (3) Print "Total: " followed by the total and a new line
li   $v0, 4
la   $a0, msg_total
syscall

li   $v0, 1
add  $a0, $s3,$zero
syscall

li   $v0, 4
la   $a0, nl
syscall

li   $v0, 10
syscall
