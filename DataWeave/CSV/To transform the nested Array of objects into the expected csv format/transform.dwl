//Different ways to merge two arrays
%dw 2.0
import leftJoin from dw::core::Arrays
import mergeWith from dw::core::Objects
output application/json
var v = 
    [ 
    { 
        "Id": "About",
        "Name": "Johnny Depp"  
    }, 
    {
        "Id": "Find", 
        "Name": "justin bieber"  
    }   
    ]
---

{

    way1: v map ($ ++ { Age: payload[$$].Age,label: payload[$$].label}),
    

    way2: leftJoin(v, payload, (v) -> v.Id, (payload) -> payload.Id) map ($.l mergeWith $.payload) ,


    way3: v map { (payload filter ((item, index) -> $.Id == item.Id)),($.&Name) },
    
    way4: v map {   
                    "Id": $.Id,
                    "Name": $.Name,
                    "Age": payload[$$].Age,
                    "label":payload[$$].label
                },
    way5: (v zip payload) map ({ ($) } distinctBy $$),
                             
}