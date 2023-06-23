%dw 2.0
output application/json
var a = "\"999\""
---
// (a replace  ("\"") with "" ) as Number

(a replace  /[^a-z0-9A-Z]/ with "" )as Number

// expected output:
// 999