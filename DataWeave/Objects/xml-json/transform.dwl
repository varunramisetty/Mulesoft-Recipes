%dw 2.0
output application/json
---
payload.Orders.*Order map ((item, index) -> totalCost: item.Price * item.Quantity)


//In the script above, we use the map function to iterate over each <Order> element in the input XML. For each <Order>, we calculate the totalCost by multiplying the Price and Quantity values. Finally, we construct an array of objects with the totalCost property