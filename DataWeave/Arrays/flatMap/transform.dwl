%dw 2.0
output application/json
var flattenArray = (input1) ->
  input1 flatMap ((item) ->
    if (item is Array) flattenArray(item)
    else item
  )
---
flattenArray(payload)


/*
[
  {
    "a": 1
  },
  {
    "b": 2
  },
  {
    "c": 3
  },
  {
    "d": 4
  }
]
*/