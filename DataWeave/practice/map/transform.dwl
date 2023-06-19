%dw 2.0
output application/json
---
{(payload map (
($.field_key) :$.field_value
))}


// The expression in the above iterates over each item in the payload array and creates a new key-value pair for each item. 

//The key is extracted from $.field_key, and the value is extracted from $.field_value. 
//The ($) syntax is used to reference the current item being processed in the map function.