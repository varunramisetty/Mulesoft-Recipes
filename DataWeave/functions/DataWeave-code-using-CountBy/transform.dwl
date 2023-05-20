// countBy:
// It returns the count of the elements as per the condition is applied.

// Example
%dw 2.0
import * from dw::core::Arrays
output application/json
---
{

"Name": payload.name countBy($ contains "F"),
// the code Uses the countBy function from the Arrays module to count the occurrences of the letter "M" in the name property of the payload. The result is assigned to the "Name" field in the output JSON object.
"Company": payload.company countBy($ contains "o"),
// Counts the occurrences of the letter "F" in the company property of the payload using the countBy function. The result is assigned to the "Company" field in the output JSON object.
"email": payload.email countBy ($ matches  "mule@gmail.com" ),
//Counts the occurrences of the pattern "mule@gmail.com" in the email property of the payload using the countBy function. The result is assigned to the "email" field in the output JSON object.
"Count": payload.allowance countBy($>1000)
//Uses the countBy function to count the number of elements in the allowance property of the payload that are greater than 1000. The result is assigned to the "Count" field in the output JSON object.

}


// Expression Output:

// {
//   "Name": 1,
//   "Company": 2,
//   "email": 3,
//   "Count": 4
// }