%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload.Notes splitBy (/[,\/]/)
//It splits the payload.Notes string by either a comma or a forward slash. This creates an array of substrings.
 map ((item, index) -> item splitBy (/[:\/]/)
 //It further splits each substring in the previous step by either a colon or a forward slash. This creates a nested array of substrings
    ) map ((item, index) ->
    {
       (item[0]): item[1]
//It maps each nested array into an object, where the first element of the nested array becomes the key and the second element becomes the value. This creates an array of objects.
    }

) reduce ((item, accumulator) -> accumulator ++ item)
//It reduces the array of objects into a single object by concatenating each object together