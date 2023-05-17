%dw 2.0
output application/json
---
  // here the requirement is to we have roles in i/p containing only values we need to add a key for that value//
    // at the same time no other fields will not get effected//
    
payload  update {
    case .value-> $  map ((item, index) -> item mapObject ((value, key, index) ->
// The code then checks if the key is equal to "roles" using the key ~= "roles" condition.

       if (key ~= "roles")
// If the key is not "roles", it simply returns the key-value pair without modification.

       {
           ((key): value map( "values": $)reduce ($++$$))
       } else (key): value
// If the key is "roles", it creates a new object with the same key, but modifies the value. It uses the map operation on the value to create a new array of objects, where each object has a single key "values" with the original value. The reduce ($++$$) concatenates all the objects into a single array. 
     ) )
}