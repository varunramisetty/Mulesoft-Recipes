//Concatenate Elements of an Array
%dw 2.0
output application/json
---
// payload reduce ((item, accumulator) -> accumulator ++ item)

payload reduce ($$ ++$)

//We will apply a reduce function to our input and add the value of the item with the value of the accumulator.

