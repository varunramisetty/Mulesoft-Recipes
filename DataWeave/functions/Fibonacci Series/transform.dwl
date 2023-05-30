%dw 2.0
output application/json indent=false

fun fibonacci(limit:Number,series:Array<Number>)  = if (limit <= 0) series

        else fibonacci( limit - 1, series + (series[-1] + series[-2]))

fun fibonacci(limit:Number) = fibonacci(limit, [0,1]) 
---
{
  limit10: fibonacci(10),
   limit15: fibonacci(15, [13,21])
  
}

/*For example : 0, 1, 1, 2, 3, 5, 8
In Fibonacci Series, first number starts with 0 and second is with 1 and then its grow like,
0
1
0 + 1 = 1
1 + 1 = 2
1 + 2 = 3
2 + 3 = 5
3 + 5 = 8
5 + 8 = 13
8 + 13 = 21
13 +21 = 34
21 + 34 = 55
34 + 55 = 89

*/