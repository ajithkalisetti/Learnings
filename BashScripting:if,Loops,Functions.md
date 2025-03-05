# Bash Scripting: `if`, Loops, and Functions

This guide provides an overview of key Bash scripting concepts, including `if` conditions, loops, and functions. Each concept is explained with examples to help you understand how to use them effectively in your scripts.

---

## Table of Contents

1. [If Conditions](#if-conditions)
   - [Single Square Brackets `[]`](#single-square-brackets-)
   - [Double Parentheses `(())`](#double-parentheses-)
   - [Combining Conditions](#combining-conditions)

2. [Loops](#loops)
   - [For Loop](#for-loop)
   - [While Loop](#while-loop)
   - [Until Loop](#until-loop)

3. [Functions](#functions)
   - [Defining Functions](#defining-functions)
   - [Function Arguments](#function-arguments)
   - [Return Values](#return-values)
   - [Local Variables](#local-variables)

4. [Examples](#examples)
   - [Example 1: Using `if` and Loops](#example-1-using-if-and-loops)
   - [Example 2: Using Functions](#example-2-using-functions)

---

## If Conditions

### Single Square Brackets `[]`
- Used for general-purpose conditional tests (strings, files, basic arithmetic).
- Example:
  ```bash
  if [ "$var" = "value" ]; then
      echo "Variable is 'value'."
  fi
### Double Parentheses (())
- Used for arithmetic evaluations and comparisons.
- Example:
  ```bash
  if (( $a < $b )); then
      echo "$a is less than $b."
  fi
### Combining Conditions
- Use && (AND) and || (OR) to combine conditions.
- Example:
  ```bash
  if [ "$a" -lt 10 ] && [ "$b" -gt 5 ]; then
      echo "Both conditions are true."
  fi
## Loops
### For Loop
- Iterates over a list of items.
- Example:
  ```bash
  for i in {1..5}; do
      echo "Number: $i"
  done
###  While Loop
- Executes commands as long as a condition is true.
- Example:
  ```bash
  count=1
  while [ $count -le 5 ]; do
      echo "Count: $count"
      count=$((count + 1))
  done
### Until Loop
- Executes commands until a condition becomes true.
- Example:
  ```bash
  count=1
  until [ $count -gt 5 ]; do
      echo "Count: $count"
      count=$((count + 1))
  done
## Functions
- Defining Functions
- Functions group commands into reusable blocks.
- Example:
  ```bash
  greet() {
      echo "Hello, $1!"
  }
  greet "Alice"
### Function Arguments
- Functions can accept arguments using $1, $2, etc.
- Example:
  ```bash
  add() {
      echo $(( $1 + $2 ))
  }
  result=$(add 5 10)
  echo "Sum: $result"
  Return Values
### Functions return a status code (0 for success, non-zero for failure).
- Example:
  ```bash
  is_even() {
      if (( $1 % 2 == 0 )); then
          return 0
      else
          return 1
      fi
  }
  if is_even 4; then
      echo "4 is even."
  fi
### Local Variables
- Use local to declare variables that are only accessible within the function.
- Example:
  ```bash
  my_function() {
      local var="I am local"
      echo "$var"
  }
  my_function
### Examples
 #### Example 1: Using if and Loops
    ```bash
    #!/bin/bash
    #Check if a number is positive, negative, or zero
    read -p "Enter a number: " num
    if (( num > 0 )); then
        echo "Positive."
    elif (( num < 0 )); then
        echo "Negative."
    else
        echo "Zero."
    fi
    #Print numbers from 1 to 5 using a for loop
    for i in {1..5}; do
        echo "Number: $i"
    done
 #### Example 2: Using Functions
    ```bash
    #!/bin/bash
    # Define a function to calculate factorial
    factorial() {
      if (( $1 <= 1 )); then
          echo 1
      else
          local prev=$(factorial $(( $1 - 1 )))
          echo $(( $1 * prev ))
      fi
    }
    # Call the function
    result=$(factorial 5)
    echo "Factorial of 5 is: $result"
# Conclusion:
- This guide covers the basics of if conditions, loops, and functions in Bash scripting. By mastering these concepts, you can write more efficient, modular, and powerful scripts. Practice the examples provided to reinforce your understanding.

- For further learning, refer to the [Bash documentation] (https://www.gnu.org/software/bash/manual/).
