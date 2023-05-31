%dw 2.0
output application/json
---
payload filter ((item, index) -> upper (item.Year > 2019 ))
