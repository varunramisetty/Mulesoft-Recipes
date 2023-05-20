// sumBy:
// It returns the sum of total elements if the applied condition matches.

// Example:

%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
"Name": payload.name sumBy(if($ contains "M") 1 else 0),
//Uses the sumBy function from the Arrays module to calculate the sum of values based on the condition. In this case, it sums up the occurrences where the name property in the payload contains the letter "M". If the condition is true, it adds 1; otherwise, it adds 0. The result is assigned to the "Name" field in the output JSON object.
"Company": payload.company sumBy(if($ contains "Z") 1 else 0),
//Calculates the sum of values based on the condition where the company property in the payload contains the letter "Z". If the condition is true, it adds 1; otherwise, it adds 0. The result is assigned to the "Company" field in the output JSON object.
"Sum": payload.allowance sumBy(if($>1000) $ else 0),
//Calculates the sum of values based on the condition where the allowance property in the payload is greater than 1000. If the condition is true, it adds the value of allowance; otherwise, it adds 0. The result is assigned to the "Sum" field in the output JSON object.

}


// Expression Output:
// {
//   "Name": 2,
//   "Company": 0,
//   "Sum": 15000
// }