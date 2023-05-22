%dw 2.0
output application/json
import * from dw::util::Values
var payload = {
"message": "Hello world!",
"values":[
    {
      "name": "immadi"
    },
    {
      "name": "katiki"
    },
    {
      "name": "Ramisetty"
    },
    {
      "name": "vaka"
    }
  ]
}
//This code defines a function named renameKey that takes two parameters: key and position. The function uses a match expression to conditionally rename the key based on the position value. If position is 1, the key is renamed to "secondName", if it's 2, to "thirdName", if it's 3, to "fourthName"
fun renameKey(key: Key, position) = key match {
    case value if (position == 1) -> "secondName"
    case value if (position == 2) -> "thirdName"
    case value if (position == 3) -> "fourthName"
    else -> (key)  //Otherwise, the key remains unchanged.
}
---
{
    message:payload.message,
    values: payload.values map(values)->
// Within the map function, each values item is further processed using the mapObject function. The mapObject function iterates over each key-value pair in the values object.
        values mapObject (value, key) ->{
           (renameKey(key,$$)):value
        }
}