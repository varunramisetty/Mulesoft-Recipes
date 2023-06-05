%dw 2.0
output application/json
//Here I map the fields based on my output Requirement with the help of map function and also i have used Date function to map the date as of output requirement.
---
payload map ((item, index) ->{
"firstName":(item.fullName splitBy " ")[0],
"lastName":(item.fullName splitBy " ")[1],
"miles": item.miles,
"DateofJoin": item.joinedDate as Date as String{format:"d-MMM-y"}
})


/*[
  {
    "firstName": "Peter",
    "lastName": "parker",
    "miles": 68,
    "DateofJoin": "22-Dec-2021"
  },
  {
    "firstName": "Joseph",
    "lastName": "charles",
    "miles": 49,
    "DateofJoin": "15-Nov-2021"
  }
]*/