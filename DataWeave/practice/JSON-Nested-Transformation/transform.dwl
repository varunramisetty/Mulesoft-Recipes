%dw 2.0
output application/json  
---
payload map ((item, index) -> ({
    reference_id: item.reference_id,
    dataint: item.dataint
  }) ++ {
    (item.data replace "{" with "" replace "}" with "" splitBy ", " map ((item, index) -> {
      ((item splitBy "=")[0]): (item splitBy "=")[1]
    }))
  })


// The payload map ((item, index) -> ( section iterates over each item in the payload array. The item represents an individual object in the array, and index represents the index of that item.

// The ++ operator is used to concatenate the initial object with another object created in the subsequent section.

// The replace function is used twice to remove the opening and closing curly braces from the data string, creating a comma-separated key-value pair string.

// The splitBy ", " function is used to split the key-value pairs into an array.

// The map function is applied to each item in the array to further transform the data. Within the map, each item (a key-value pair string) is split into an array using the splitBy "=" function.
