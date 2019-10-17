#!/bin/bash

try() {
    EXPECTED="$1"
    INPUT="$2"
    ASM="${INPUT}.s"
    ./9cc "$INPUT" > "$ASM"
    gcc -o $INPUT "$ASM"

    ./$INPUT
    ACTUAL="$?"
    if [ "$ACTUAL" = "$EXPECTED" ];then
        echo "$INPUT => $ACTUAL"
    else
        echo "$INPUT => $EXPECTED expected but got $ACTUAL"
        exit 1
    fi
}

try 0 0
try 9 9
echo "OK"
