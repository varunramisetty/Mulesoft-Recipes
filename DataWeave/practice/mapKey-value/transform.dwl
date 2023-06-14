%dw 2.0
output application/json
---
membership_rates: {(payload map
{
    ($.category): $.price
})}



/*
{
"membership_rates": {
"basic": 25.99, "premium": 65.25,
"vip": 99.20
}
}*/