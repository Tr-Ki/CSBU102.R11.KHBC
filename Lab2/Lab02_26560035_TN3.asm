Name: Phan Trung Kien

Student ID: 26560035

Purpose: Experiment 3 - Capitalize specific characters in a string by hand

Register plan:

$s0 = address of the first byte of str1

$t0 = temporary register to hold the loaded byte and calculate uppercase character

.data
str1: .asciiz "nguyen van an"
tag:  .asciiz " [end]"
nl:   .asciiz "\n"

.text
.globl main
main:
la   $s0, str1        # $s0 = address of str1

# replace the byte at offset 0 a capital letter
lb   $t0, 0($s0)      # load 'n'
addi $t0,$t0, -32    # convert to 'N'
sb   $t0, 0($s0)      # store 'N' back

# replace the byte at offset 7 a capital letter
lb   $t0, 7($s0)      # load 'v'
addi $t0,$t0, -32    # convert to 'V'
sb   $t0, 7($s0)      # store 'V' back

# replace the byte at offset 11 a capital letter
lb   $t0, 11($s0)     # load 'a'
addi $t0,$t0, -32    # convert to 'A'
sb   $t0, 11($s0)     # store 'A' back

li   $v0, 4           # service 4: print the string that starts at $a0
add  $a0, $s0,$zero
syscall

li   $v0, 4
la   $a0, nl
syscall

li   $v0, 10
syscall