%dw 2.0
output application/json
fun recursive(v: Array) = 
    v map if($ is Number) ($ +2 ) else recursive($)
---
recursive(payload)

// The function recursively iterates over the elements of the array v using the map function.
// Inside the map function, there is an if condition: if ($ is Number) ($ + 2) else recursive($).
// If the current element $ is a number ($ is Number), it adds 2 to that number ($ + 2).
// If the current element $ is not a number, it recursively calls the recursive function passing the current element $ as the argument.
