%dw 2.0
output application/json
import some from dw::core::Arrays

// Empty Array Module check

fun containsEmptyValues(payload) = if (isEmpty(payload)) true
   else payload some isEmpty($)
---
{
  one: containsEmptyValues(null),
  two: containsEmptyValues([]), 
  three: containsEmptyValues([1]),
  four: containsEmptyValues([null]), 
  five: containsEmptyValues(["abc", "", "def", ""]), 
  six: containsEmptyValues([null, "abc", "def", null]), 
  seven: containsEmptyValues(["abc", null, ""]), 
  eight: containsEmptyValues(["abc", "def"]),
  nine: containsEmptyValues([""]) 
}