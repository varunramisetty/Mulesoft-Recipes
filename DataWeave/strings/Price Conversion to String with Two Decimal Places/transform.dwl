%dw 2.0
output application/json
---
{
"Items":{
    "Price": (payload.Items.Price) as String
        {
            format : '.00'
        }
}
}

//The code takes a JSON payload with a numerical price and converts it into a JSON response with the same price represented as a string with two decimal places.

//Another  way to do this code

// payload update {
// case .Items -> $ update {
// case .Price -> $ as String{format:"##.00"}
// }
// }

// simplest way 

// payload.Items.Price as String{format: "#.0#"}
