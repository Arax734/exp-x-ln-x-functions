# exp-x-ln-x-functions
I have implemented exp(x) and ln(x) functions in x86 Microsoft Macro Assembler (MASM).

Project documentation
Topic: Implementation of the exp(x) and ln(x) functions.
Author: Kacper Fryt

Preliminary program description

The program contained in the project is written in Microsoft Macro Assembler x86. It consists of three procedures: calc_ln, calc_exp, and main.
In the .data section, variables x, one, two, three, four, and result are declared. 
In the calc_ln procedure, the natural logarithm of x is calculated using the Taylor method, and the result is stored in the result variable.
In the calc_exp procedure, the value of e^x is calculated using the Taylor method, and the result is stored in the result variable.
In the main procedure, the ReadFloat procedure is called, which reads a number from the console and stores it in the x variable. Then, the calc_exp and calc_ln procedures are called, and their results are printed on the screen using the WriteFloat procedure.
The WriteFloat function, which is used to display floating-point numbers, is implemented in the included library - Irvine32.

To run the program after displaying the console, enter a floating-point number, e.g., 5.0, 4.3, 2.4, 1.0.


Pseudocode of the program

1.	Import the Irvine32.inc library.
2.	Declare variables x, one, two, three, four, and result.
3.	Create the calc_ln procedure: 
  a.	Get the value of the x variable and store it on the stack.
  b.	Get the value of the one variable and store it on the stack.
  c.	Subtract the value of one from the value of x and store the result on the stack.
  d.	Divide the value of x by the value on the stack.
  e.	Repeat steps b-d for the values of two, three, four.
  f.	Multiply and add values from the stack.
  g.	Store the result in the result variable.
  h.	Return the value.
4.	Create the calc_exp procedure: 
  a.	Get the value of the x variable and store it on the stack. 
  b.	Add 1 to the value of x and store the result on the stack. 
  c.	Repeat steps b-e for the values of two, three, four. 
  d.	Multiply and add values from the stack. 
  e.	Store the result in the result variable. 
  f.	Return the value.
5.	Create the main procedure: 
  a.	Get the value of x from the user. 
  b.	Call the calc_exp procedure and store the result in the result variable. 
  c.	Display the value of result. 
  d.	Call the calc_ln procedure and store the result in the result variable. 
  e.	Display the value of result. 
  f.	End the program.
6.	End.
