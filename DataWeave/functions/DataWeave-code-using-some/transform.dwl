// some:
// It is Boolean, returns either true or false.

// Example:

%dw 2.0
import * from dw::core::Arrays
output application/json
var a = [
    {
        name: "Max", 
        email: "varun@api.com", 
        phone: "91 8143222313", 
        company: "MuleSoft"
        },
        {
            name: "Mule", 
            email: "varun@gmail.com", 
            phone: "91 8885544397", 
            company: "Salesforce"
        }
        ]
---
{
Name: a.name some($ contains "Mule"),
//This expression uses the some function from the Arrays module to check if any name property in the a array contains the word "Mule". If there is at least one such entry, it returns true; otherwise, it returns false.
phone: a.phone some($ contains "6"),
//same as above expression 
Company: a.company some($ matches "MuleSoft"),
//This expression uses the some function to check if any company property in the a array matches the case-insensitive pattern "muleSoft". If there is at least one such entry, it returns true; otherwise, it returns false.
email: a.email some($ matches "api")
//same as above expression 
}


// {
//   "Name": true,
//   "phone": false,
//   "Company": true,
//   "email": false
// }