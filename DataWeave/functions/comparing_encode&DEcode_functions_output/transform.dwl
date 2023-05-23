%dw 2.0
import * from dw::core::URL
output application/json
---
[
    {
  "comparing_encode_functions_output" :
//encodeURIComponent: This function is used to encode a complete URI component by replacing certain characters with their hexadecimal escape sequences. It encodes all characters except the alphanumeric characters (A-Z, a-z, 0-9), hyphen (-), underscore (_), period (.), and asterisk (*). This function is typically used to encode query parameters, form data, or any other part of a URL that needs to be transmitted
   {
  	"encodeURIComponent" : encodeURI(" https%3A%2F%2Ftrailblazer.me%2Fid "),
  	"encodeURIComponent_to_hex" : encodeURIComponent(";,/?:@&="),
  	"encodeURI_not_to_hex" : encodeURI(":@;?&,/(.="),
  	"encodeURIComponent_not_encoded" : encodeURIComponent("-_.!~*'()")
  }
    },
    {
  "decodeURIComponent":

//decodeURIComponent: This function is used to decode a URI component that has been encoded using encodeURIComponent. It takes an encoded string and converts it back to its original form by replacing the escape sequences with their corresponding characters. This function is commonly used to extract and decode query parameters or any other encoded part of a URL.
   {
    "decodeURIComponent" : decodeURIComponent("https%3A%2F%2Ftrailblazer.me%2Fid"),
    "decodeURIComponent" : decodeURIComponent("%3A%40%3B%3F%26%2C%2F%28%2E%3D"),
    "decodeURIComponent" : decodeURIComponent("%27%21%2D%5F%28%2E28%24"),
                        }
    }
]