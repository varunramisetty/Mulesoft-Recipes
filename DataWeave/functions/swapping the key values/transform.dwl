//swapping the key values 
%dw 2.0
output application/json
---

payload map ( $ mapObject ($) : $$ )

// the payload variable represents the input data, and map is a higher-order function that iterates over each element of the payload array. For each element, the $ variable represents the current element being processed.

// Inside the mapping function, mapObject is another higher-order function that iterates over each key-value pair of the current element. The $ variable in the mapObject function represents the key, and $$ represents the corresponding value.