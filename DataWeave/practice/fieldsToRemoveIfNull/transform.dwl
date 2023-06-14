%dw 2.0
output application/json
var fieldsToRemoveIfNull = ["name","message"]
---
payload map ( $ mapObject ((value, key, index) -> if((fieldsToRemoveIfNull contains (key as String)) and (value ==null) ){} else {(key):value} ))


// payload map: This iterates over each element in the payload, which typically represents an input data structure, such as an array.

// mapObjects applies a mapping operation to each element in the payload. The mapObject function is used to transform an object (key-value pairs).

// ($ mapObject ((value, key, index) -> ... )): This defines an anonymous function that takes three parameters: value, key, and index. It is used to iterate over each key-value pair in the input object.

// If the condition is true (i.e., the key is in the array and the value is null), an empty object {} is returned, effectively removing the key-value pair from the output.

// If the condition is false (i.e., the key is not in the array or the value is not null), a new object with the key-value pair is returned: {(key): value}.