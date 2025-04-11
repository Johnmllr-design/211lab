# This is a sample assembly program that allows you to test the implementation of an addi instruction in your PIPS datapath.
# This program will begin executing at the first assembly instruction regardless of what label you give it.
addi_test:
  addi $t0, $zero, 0  # Load zero into $t0
  addi $t1, $t0, 1    # Store $t0+1 into $t1 == 1 (0x1)
  addi $t2, $t1, 1    # Store $t1+1 into $t2 == 2 (0x2)
  addi $t3, $t2, 1    # Store $t2+1 into $t3 == 3 (0x3)


# This is a simple program that tests the implementation of your li and add instructions.
add_test:
  li $s0, 3          # Load a 3 into $s0
  add $s1, $s0, $s0  # Store $s0 + $s0 into $s1 == 6
  add $s2, $s1, $s1  # Store $s1 + $s1 into $s2 == 12 (0xC)
  add $s3, $s2, $s2  # Store $s2 + $s2 into $s3 == 24 (0x18)

#This is a simple program to test our sub and subi instructions
subi_test:
  subi $t0, $zero, 0  # Load zero into $t0
  addi $t1, $t0, 3    # Store $t0+3 into $t1 == 3 (0x1)
  subi $t2, $t1, 1    # Store $t1-1 into $t2 == 2 (0x2)
  subi $t3, $t2, 1    # Store $t2-1 into $t3 == 1 (0x3)