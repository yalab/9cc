#!/bin/bash

try() {
    EXPECTED="$1"
    INPUT="$2"
    ASM="tmp.s"
    ./9cc "$INPUT" > "$ASM"
    gcc -o tmp "$ASM"

    ./tmp
    ACTUAL="$?"
    if [ "$ACTUAL" = "$EXPECTED" ];then
        echo "$INPUT => $ACTUAL"
    else
        echo "$INPUT => $EXPECTED expected but got $ACTUAL"
        exit 1
    fi
}
try 3 "1+2"
try 139 "99+213-173"
try 47 '5+6*7'
try 15 '5*(9-6)'
try 4 '(3+5)/2'
try 10 '-10+20'
try 1 '1 == 1'
try 0 '1 == 0'
try 0 '1 != 1'
try 1 '1 != 0'
try 1 '1 > 0'
try 0 '1 > 1'
try 1 '0 < 1'
try 0 '0 < 0'
echo "OK"
