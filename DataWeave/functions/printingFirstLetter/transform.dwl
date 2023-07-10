%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> 
if(key ~= 'Country')
{
    (key): value map $[0] joinBy  ''
}else
(key): value
)
 


/*
This function iterates over each key-value pair in the input payload and transforms them into a new object.

if condition statement checks if the current key is equal to 'Country'. If it is, the script proceeds to the else part; otherwise, it goes to the if part.

if condition statement checks this expression is used to transform the value of the 'Country' key. It maps over each element in the array value, selects the first character of each element using $[0], and joins them together into a single string using joinBy ''. So, for the input array ["India", "Pakistan", "USA", "London", "Canada"], it becomes "IPULC".

else expression simply keeps the original key-value pair unchanged.
*/
