%dw 2.0
output application/json
---
Response:flatten(payload 
    map ((item, index) -> {
    Item: item})) 
    reduce ($$ ++ $)



 //  {"Response": payload map ((item, index) -> { Item: item})}


