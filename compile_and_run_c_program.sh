#!/bin/bash

function echo_error() {
  local colored_text="\033[31m$1\033[0m"
  echo -e $colored_text
}

# Optional argument for source file (defaults to main.c)
sourceFile="${1:-main.c}"

# Check if source file is a valid C file
if [[ ! "$sourceFile" =~ \.c$ ]]; then
  echo_error "Invalid file format. Please provide a C source file ending in '.c'."
  exit 1
fi

if [[ ! -f "$sourceFile" ]]; then
  echo_error "No such file found: $sourceFile"
  exit 1
fi

# Check if GCC is installed
if ! command -v gcc >/dev/null 2>&1; then
  echo_error "Error: gcc compiler not found. Please install it."
  exit 1
fi

outputFile="build/$(basename "$sourceFile" .c).exe"

if [[ ! -d "build" ]]; then
  mkdir "build"
fi

compileResult=$(gcc -o "$outputFile" "$sourceFile" 2>&1)
# Check for compilation errors
if [[ $? -ne 0 ]]; then
  echo_error "Error compiling the C program:"
  echo "$compileResult"
  exit 1
fi

# programError=$(./"$outputFile" 2>&1)
# if [[ ! -z "$programError" ]]; then
#   echo_error "Error running the program:"
#   echo "$programError"
#   exit 1
# fi

./"$outputFile"