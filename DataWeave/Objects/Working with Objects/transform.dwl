%dw 2.0
output application/json
---

payload filterObject ((value, key, index) -> key ~= 'brand' or key ~= 'status')

//IT REMOVED THE KEY-VALUE PAIRS FROM OBJECTS

/*

payload mapObject ((value, key, index) -> (upper(key)): value)

            //it transforming an Object to an new object 
 

payload pluck ((value, key, index) -> (key): value)

            //it transformed an object into an array from the given payload


payload  update { case .price ->  1000  case .tax -> 100  }

            // it was changed the specific fields on ann Object

*/

