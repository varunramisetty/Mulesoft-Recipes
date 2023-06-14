%dw 2.0
output application/json
---
(now() >> "IST") as String {format:"hh:mm:ss"}