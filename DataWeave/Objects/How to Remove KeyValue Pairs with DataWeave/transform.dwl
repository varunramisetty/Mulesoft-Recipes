%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key, index) -> (key):value map ((item, index) -> item -"count"))

//It uses the mapObject function to iterate over the properties of the payload object.For each property, it performs an inner transformation using the map function.In the inner map, it iterates over the values of the property.For each value (item), it uses the expression item - "count" to remove the "count" field from the object.
//The resulting transformed values are then assigned back to the corresponding property.
/*
{
  "notification": [
    {
      "status": {
        "code": "BILLING",
        "value": "Past Due"
      }
    }
  ],
  "notification1": [
    {
      "status": {
        "code": "RENEWAL",
        "value": "Past Due"
      }
    }
  ]
}
*/