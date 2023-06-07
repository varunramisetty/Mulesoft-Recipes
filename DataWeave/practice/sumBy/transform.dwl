%dw 2.0
import * from dw::core::Arrays
output application/json
var a = [
    {
        name: "Max", 
        email: "abc@.xyzcom", 
        phone: "91 0808907890", 
        company: "MuleSoft", 
        allowance: 2000
    },
    {
        name: "Mule",
        email: "abc@xyz.com",
        phone: "91 0808907890",
        company: "MuleSoft",
        allowance: 4000
    }
     ]
---
{
"Name": a.name sumBy(if($ contains "M") 1 else 0),
"Company": a.company sumBy(if($ contains "MuleSoft") 2 else 0),
"Sum": a.allowance sumBy(if($>1000) $ else 0),
}