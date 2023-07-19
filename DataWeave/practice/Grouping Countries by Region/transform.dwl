%dw 2.0
output application/json
---
payload groupBy $.region pluck $ map  {
  "regionName": $.region[0],
  "countryList": $.country map {
    "name": $
  }
}

//The code takes a list of objects (PAYLOAD) containing country details and groups them based on the "region" field, creating a new list with each region's name and its corresponding list of countries.

/*
[
  {
    "regionName": "Asia",
    "countryList": [
      {
        "name": "india"
      },
      {
        "name": "japan"
      }
    ]
  },
  {
    "regionName": "emea",
    "countryList": [
      {
        "name": "netherland"
      }
    ]
  }
]
*/


