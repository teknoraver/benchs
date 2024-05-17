# benchs

This package contains two applications for integer and float point benchmarking.  
* dhrystone is the integer benchmark, taken from https://en.wikipedia.org/wiki/Dhrystone
* flops is the floating point one, taken from http://home.iae.nl/users/mhx/flops.c
testall is a script which builds and run dhrystone for every x86 arch supported by GCC in both 32 and 64 bit mode,
and print the result in CSV format
