%dw 2.0
output application/json
type v=  String {format: "\$#,###.00"} 
---
5444 as v
//It will format the number as a string like $5,444.00