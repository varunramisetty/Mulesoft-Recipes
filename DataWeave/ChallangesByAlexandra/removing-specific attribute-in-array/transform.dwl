//removing specific attribute in array
%dw 2.0
import update from dw::util::Values
output application/json  
---
payload update ["data", "category", "services"] with (
    $ map ( 
        if ($.category == "SDL" and $.available == true)
            $ update "accountDetails" with ($ map $- "acNumber")
        else
           $
    )
 
)

//To remove acNumber attribute when category is SDL and available is true , I tried update and map  achieve result