# Lab 1
## Compile Hello
gcc -nostdlib -no-pie print_hello.s -o hello
## Run
./hello

## Compile Task_1
gcc -no-pie Task_1.s print_ram.c -o task1
## Run Task_1
./task1

## Compile Task_2
gcc -no-pie Task_2.s print_ram.c -o task2
## Run Task_2
./task2

## Compile Task_3
gcc -no-pie Task_3.s print_ram.c -o task3
## Run Task_3
./task3

## Compile Task_4
gcc -no-pie Task_4.s print_ram4.c -o task4
## Run Task_4
./task4