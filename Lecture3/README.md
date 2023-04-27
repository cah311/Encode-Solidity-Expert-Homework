# Homework 3

## HomeworkEVM1

1. What are the advantages and disadvantages of the 256 bit word length in the EVM
   - advantages:
     1. provides high precision: 256 bit words allow for larger range of numbers to be represented with greater accuracy than smaller word sizes. With this increased size, it allows the system to perform cryptographic operations with greater precision.
        ex. say we generated a 2048-bit RSA key pair, which requires the generation of 1024 bit prime numbers. IF we used a 128 bit word size, we would have to split each prime number into 8 parts to perform the required computations. On the other hand, if we used a 256 bit word size, we would only have to spilt each prime n umber into 4 parts. The less times we have to splt these prime numbers up reduces the potential for errors and simplifies the computation. More efficiency = more accuracy
2. What would happen if the implementation of a precompiled contract varied between
   Ethereum clients ?
3. Using Remix write a simple contract that uses a memory variable, then using the
   debugger step through the function and inspect the memory.
