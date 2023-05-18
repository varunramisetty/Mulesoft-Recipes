// input
// {
        
// "Notes": "NOTES: DataWeave ,MEMBER TYPE: S ,EXPIRY DATE: 2022-08-01 ,MEMBER STATUS: A "
        
// }

%dw 2.0
output application/json
---
payload

// ouptut

// {
//   "NOTES": " ",
//   "MEMBER TYPE": " S",
//   "EXPIRY DATE": " 2022-08-01",
//   "MEMBER STATUS": " A"
// }