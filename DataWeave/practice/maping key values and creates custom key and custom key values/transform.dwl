%dw 2.0
output application/json
---
payload map ((item, index) -> { 
    "num":index,
    "fname": item[0],
    "Iname": item[1]

} )
 

/*[ 
    {
        "num": 0, 
        "fname": "Max", 
        "Iname": "Mule"
    }, 
    {
        "num": 1, 
        "fname": "Molly", 
        "lname": "Mule"
    }
 ]
*/