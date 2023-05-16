%dw 2.0
output application/json
---
valuesOf(payload  groupBy $.department) flatMap (
        do {
           	var myVar = $ orderBy $.time
            var start = myVar[0].time 
           	---
            myVar map ((item, index) -> item ++ 
            {
                started: start + (1 * index + 1) + (3 * index), 
                ended: start + (1 * index + 1) + (3 * index) + 3 
            }
            )
            })