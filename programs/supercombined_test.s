# This is a sample assembly program to test all instructions

# Test addi (Add Immediate) instruction
addi_test:
  addi $t0, $zero, 0  # Load zero into $t0
  addi $t1, $t0, 1    # Store $t0+1 into $t1 == 1 (0x1)
  addi $t2, $t1, 1    # Store $t1+1 into $t2 == 2 (0x2)
  addi $t3, $t2, 1    # Store $t2+1 into $t3 == 3 (0x3)

# Test add instruction
add_test:
  li $s0, 3           # Load a 3 into $s0
  add $s1, $s0, $s0   # Store $s0 + $s0 into $s1 == 6 (0x6)
  add $s2, $s1, $s1   # Store $s1 + $s1 into $s2 == 12 (0xC)
  add $s3, $s2, $s2   # Store $s2 + $s2 into $s3 == 24 (0x18)

# Test subi (Subtract Immediate) instruction
subi_test:
  subi $t0, $zero, 0   # Load zero into $t0
  addi $t1, $t0, 3     # Store $t0+3 into $t1 == 3 (0x3)
  subi $t2, $t1, 1     # Store $t1-1 into $t2 == 2 (0x2)
  subi $t3, $t2, 1     # Store $t2-1 into $t3 == 1 (0x1)

# Test sub instruction
sub_test:
  sub $t0, $t1, $t2    # $t0 = $t1 - $t2 (test subtract)
  sub $t3, $t1, $t0    # $t3 = $t1 - $t0

# Test and instruction
and_test:
  and $t0, $t1, $t2    # $t0 = $t1 & $t2 (bitwise AND)
  andi $t3, $t0, 1     # $t3 = $t0 & 1 (AND with immediate)

# Test or instruction
or_test:
  or $t0, $t1, $t2     # $t0 = $t1 | $t2 (bitwise OR)
  ori $t3, $t0, 1      # $t3 = $t0 | 1 (OR with immediate)

# Test nand instruction
nand_test:
  nand $t0, $t1, $t2   # $t0 = $t1 nand $t2
  nandi $t3, $t0, 1    # $t3 = $t0 nand 1 (NAND with immediate)

# Test nor instruction
nor_test:
  nor $t0, $t1, $t2    # $t0 = $t1 nor $t2
  nori $t3, $t0, 1     # $t3 = $t0 nor 1 (NOR with immediate)

# Test xor instruction
xor_test:
  xor $t0, $t1, $t2    # $t0 = $t1 xor $t2
  xori $t3, $t0, 1     # $t3 = $t0 xor 1 (XOR with immediate)

# Test slt (set less than) instruction
slt_test:
  slt $t0, $t1, $t2    # $t0 = 1 if $t1 < $t2, else $t0 = 0

# Test slti (set less than immediate) instruction
slti_test:
  slti $t0, $t1, 5     # $t0 = 1 if $t1 < 5, else $t0 = 0

# Test sltu (set less than unsigned) instruction
sltu_test:
  sltu $t0, $t1, $t2   # $t0 = 1 if unsigned $t1 < $t2, else $t0 = 0

# Test sltiu (set less than unsigned immediate) instruction
sltiu_test:
  sltiu $t0, $t1, 10   # $t0 = 1 if unsigned $t1 < 10, else $t0 = 0

# Test nop (no-op instruction)
nop_test:
  nop                  # No-op (does nothing)

