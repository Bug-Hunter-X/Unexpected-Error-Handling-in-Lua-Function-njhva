# Lua Error Handling Bug

This repository demonstrates a common error in Lua related to error handling when dealing with nil parameters.

## The Bug

The `bug.lua` file contains a function `myFunction` that checks if its parameter is nil. If it is, it uses the `error` function to throw an error.

However, if `myFunction` is called with a nil parameter and the calling function does not properly handle the error, the program will crash.

## The Solution

The `bugSolution.lua` file shows a better way to handle this situation.  Instead of directly using `error`, it uses `pcall` to call the function and catch the error. This allows the calling function to gracefully handle the error without crashing the program.

## How to reproduce

1. Clone this repository.
2. Run `bug.lua` and observe the error. 
3. Run `bugSolution.lua` and observe how the error is handled.

## Lessons Learned

- Always handle potential errors gracefully. Never let your application unexpectedly crash.
-  Use `pcall` to safely execute functions that might throw errors.
-  Provide informative error messages to aid in debugging.