%dw 2.0
output application/json
---
payload map {
    ref: $.id,
    amount: $.characters.value..value [0],
    reedem: $.characters.value..value[-1]
}

// This expression performs a transformation on the payload data. It uses the map function to iterate over each element of the payload array and transform it into a new structure defined within the curly braces 