%dw 2.0
import * from dw::core::URL
output application/json
---
[{
  "URIdecode" : decodeURI('https%3A%2F%2Ftrailblazer.me%2Fid')
},
{
    "URIencode" : encodeURI('https:// trailblazer .me/ id')
}]

// The first object has a key "URIdecode" with the value decodeURI('https%3A%2F%2Ftrailblazer.me%2Fid').

// decodeURI() is a function imported from the URL module. It decodes the URI component provided as an argument. In this case, it decodes the URI component 'https%3A%2F%2Ftrailblazer.me%2Fid', which represents the URL 'https://trailblazer.me/id'.
// The resulting value is assigned to the key "URIdecode".

// The second object has a key "URIencode" with the value encodeURI('https:// trailblazer .me/ id').

// encodeURI() is a function imported from the URL module. It encodes the provided string as a URI component. In this case, it encodes the string 'https:// trailblazer .me/ id'.
// The resulting value is assigned to the key "URIencode".