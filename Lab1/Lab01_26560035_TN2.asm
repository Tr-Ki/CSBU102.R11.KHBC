# Full name: Phan Trung Kien
# Student ID: 26560035
# Purpose: calculate monthly energy usages and total usage from hardcoded readings (Listing 3)

.text
.globl main
main:
    # Gan cung 4 chi so doc 
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640
 
    # Tinh toan nang luong tung thang
    sub  $t0, $s1, $s0       
    sub  $t1, $s2, $s1       
    sub  $t2, $s3, $s2       

    # Tinh tong nang luong 3 thang
    add  $t3, $t0, $t1       
    add  $t3, $t3, $t2
 
    # Ket thuc chuong trinh
    li   $v0, 10
    syscall