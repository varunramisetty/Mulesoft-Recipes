%dw 2.0
output application/json
---
(payload.mule.Header.user == "user") and (payload.mule.Header.password =="pass")