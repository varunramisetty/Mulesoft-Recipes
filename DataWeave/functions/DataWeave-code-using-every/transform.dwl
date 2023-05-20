// every:
// It is Boolean, return true only if every element matches the condition else false.
// Example:
%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
Name: payload.name every($ contains "M"),
//This expression uses the some function from the Arrays module to check if any name property in the a array contains the letter "M". If there is at least one such entry, it returns true; otherwise, it returns false.

Company: payload.company every($ contains "M"),
//same as above expression 

phone: payload.phone every($ contains "8"),
//same as the first expression 

email: payload.email every($ contains "M")
//same as the first expression 
}