%dw 2.0
output application/json
var x= payload.Input groupBy $ mapObject ((value, key, index) ->
    (key):sizeOf(value)
) 
---
keysOf(x) map( $ ++ x[$]) joinBy  ""


//Here i created variable x is defined. It takes the value of payload.Input (assuming payload is the input data), groups it by the current element ($), and then applies the mapObject function. Inside the mapObject, each value, key, and index is mapped to a new key-value pair. The key is the key itself, and the value is the size of the value array. This essentially counts the number of occurrences of each unique key in the payload.Input.

//The keysOf function is applied to x,Which returns an array of the keys present in the x object. Then, the map function is used to iterate over each key. For each key, the current element ($) is concatenated with the value of x at that key (x[$]). Finally, the joinBy function is used to concatenate all the resulting strings together without any delimiter, resulting in a single string.




/*
{

"Output" : "A5B4C3D2"

}
*/