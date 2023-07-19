%dw 2.0
output application/json
---
0 to sizeOf(payload.number)/4 -1 map (payload.number)[0 to 4*($+1)-1]


/*[
"1034",
"10341019",                 Size of payload
"103410191029",
"1034101910291333"
]*/

