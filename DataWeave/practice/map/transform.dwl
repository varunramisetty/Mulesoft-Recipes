%dw 2.0
output application/json 
---
{
  acct_id: payload.test[0].acct_id,
// It accesses the acct_id value inside the test array at index 0.
  orderitems: payload.test[0].orderitems map ((item, index) -> {
    client_sku: lower(item.client_sku),
    units: item.units
  })
}


//The map function is used to iterate over each element in the orderitems array.
// Inside the map function, for each item in the orderitems array, it creates a new object with client_sku and units fields. The client_sku field is set to the lowercase version of item.client_sku, and the units field remains the same as item.units.
