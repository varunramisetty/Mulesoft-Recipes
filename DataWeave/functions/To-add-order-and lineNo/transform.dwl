%dw 2.0
import * from dw::core::Strings
output application/json  
---
payload map ((item, index) -> 
  "orderInfo": item.Order ++ leftPad(item.lineNo, 3, 0)
)

// The leftPad function, imported from the Strings module, is used to left-pad the lineNo property. It takes three arguments: the value to be padded (item.lineNo), the desired length of the padded string (3), and the character to be used for padding ("0").