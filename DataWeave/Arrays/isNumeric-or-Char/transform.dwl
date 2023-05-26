%dw 2.0
output application/json
import * from dw::core::Strings
---
payload  map ($ filter !isNumeric($)) 
//isNumeric() to determine if the character is number or not