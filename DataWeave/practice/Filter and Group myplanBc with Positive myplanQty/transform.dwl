%dw 2.0
output application/json
---
payload groupBy $.myplanBc mapObject ((value, key, index) -> 
    (key) : value  filter($.myplanQty>0)
) filterObject ((value, key, index) -> sizeOf(value)>1) mapObject (
    ($$): true
)

//The code takes a JSON payload containing multiple items with properties "myplan," "myplanBc," and "myplanQty." 
//It then groups these items by the "myplanBc" property and filters out the groups that have at least one item with "myplanQty" greater than 0. Finally, it creates a new JSON object with the unique "myplanBc" values as keys and sets their values to "true." 
//The output contains only those "myplanBc" values that have at least one item with a positive "myplanQty."

// %dw 2.0
// output application/json
// ---
// payload filter ($.myplanQty > "0.000") groupBy $.myplanBc mapObject ((value, key, index) -> key: true)



// %dw 2.0
// output application/json
// ---
// payload filter ($.myplanQty > "0.000") groupBy $.myplanBc mapObject ((value, key, index) -> 
//     {
//         key: key,
//         containsPositiveQty: true
//     }
// )

