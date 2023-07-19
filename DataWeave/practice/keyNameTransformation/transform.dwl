%dw 2.0
output application/json
---
{
message:payload.message,
values: payload.values map
{
dt:$ mapObject ((value, key, index) ->
if(value ~= 'Vishnu')
{
'Narayana': value
}else if(value ~= 'Shiva')
{
'Mahadeva': value
}else
(key): value)
}.dt}

// It takes an input payload in JSON format and processes it to transform the values inside the "values" array based on specific conditions.

// The code replaces the values in the "values" array with alternative names for "Vishnu" and "Shiva" while keeping other values unchanged, then creates a new JSON object with the updated the key data.