//recursive-sum
%dw 2.0
output application/json

fun recursiveSum(n: Number) =
    if ( n > 0) n + recursiveSum(n-1) else 0
//This is the recursive part of the function. It checks if n is greater than 0. If it is, it adds n to the result of calling recursiveSum with the argument n-1. This recursion continues until n becomes 0, at which point the function returns 0.
---
recursiveSum(11)
//It calculates the sum of numbers from 11 down to 1 recursively.
// 
// 11+1=12
// 12+2=14
// 14+3=17
// 17+4=21
// 21+5=26
// 26+6=32
// 32+7=39
// 39+8=47
// 47+9=56
//56+10=66
