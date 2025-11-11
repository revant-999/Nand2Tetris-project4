# Project 4: Machine Language Programming

## Overview
This project contains two assembly language programs written in Hack assembly language as part of the Nand to Tetris course (Project 4). These programs demonstrate low-level programming and direct manipulation of the Hack computer's memory and screen.

## Programs

### 1. Mult.asm - Multiplication Program
**Purpose:** Multiplies two numbers and stores the result.

**Functionality:**
- Multiplies the values in RAM[0] (R0) and RAM[1] (R1)
- Stores the result in RAM[2] (R2)
- Uses repeated addition algorithm (R0 is added to itself R1 times)

**Algorithm:**
1. Initialize R2 to 0
2. Set counter to the value of R1
3. Loop: Add R0 to R2, decrement counter
4. Continue until counter reaches 0
5. Enter infinite loop at END

**Example:**
- Input: R0 = 5, R1 = 3
- Output: R2 = 15

### 2. Fill.asm - Screen Painting Program
**Purpose:** Interactive program that paints the screen black or white based on keyboard input.

**Functionality:**
- Continuously monitors the keyboard memory-mapped register (KBD)
- When any key is pressed: fills the entire screen with black pixels
- When no key is pressed: fills the entire screen with white pixels
- Screen consists of 8192 16-bit words (256 rows × 512 pixels)

**Algorithm:**
1. Check keyboard input at KBD register
2. If key pressed (KBD ≠ 0): jump to BLACK routine
3. If no key pressed (KBD = 0): jump to WHITE routine
4. BLACK: Fill all screen memory locations with -1 (all pixels on)
5. WHITE: Fill all screen memory locations with 0 (all pixels off)
6. Loop back to beginning

**Memory Map:**
- SCREEN: Base address 16384 (0x4000)
- Screen size: 8192 words (addresses 16384-24575)
- KBD: Address 24576 (0x6000)

## Technical Details

### Hack Assembly Language Features Used
- **A-instructions:** `@value` - Load value into A register
- **C-instructions:** Computation and jump commands
- **Memory access:** Direct manipulation of RAM and memory-mapped I/O
- **Labels:** For program flow control (LOOP, BEGIN, END, etc.)
- **Conditional jumps:** JEQ, JNE, JMP

### Testing
Both programs can be tested using the Hack Computer Emulator (CPU Emulator) provided with the Nand to Tetris course materials.

**Mult.asm Test:**
1. Load Mult.asm into the CPU Emulator
2. Set R0 and R1 to desired values
3. Run the program
4. Verify R2 contains the correct product

**Fill.asm Test:**
1. Load Fill.asm into the CPU Emulator
2. Run the program (should start with white screen)
3. Press any key - screen should turn black
4. Release key - screen should turn white
5. Test responsiveness with multiple key presses

## Course Context
This is Project 4 of the Nand to Tetris course, which focuses on:
- Understanding machine language programming
- Working with the Hack computer architecture
- Memory-mapped I/O
- Low-level algorithmic thinking

## Author
Created as part of the Nand to Tetris course work.

## Resources
- [Nand to Tetris Official Website](https://www.nand2tetris.org/)
- Course textbook: "The Elements of Computing Systems" by Noam Nisan and Shimon Schocken
