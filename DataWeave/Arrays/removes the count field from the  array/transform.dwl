%dw 2.0
output application/json
---
payload mapObject (value, key, index) ->(key): value map $ -'count'


//Above DataWeave code takes a JSON payload as input and removes the "count" field from each item inside the "notification" and "notification1" arrays, then outputs the modified JSON payload without the "count" field in each item.



// %dw 2.0
// output application/json
// ---
// payload mapObject (value, key, index) -> (key): value map {
//   ($ - "count") unless ($ is Object)
// }
