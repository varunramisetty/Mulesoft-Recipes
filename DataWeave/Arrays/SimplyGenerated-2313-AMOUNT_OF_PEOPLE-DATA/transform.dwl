%dw 2.0
output application/json
var AMOUNT_OF_PEOPLE = 2313
---
//This line generates an array of numbers from 1 to 2313 (AMOUNT_OF_PEOPLE). 
((1 to AMOUNT_OF_PEOPLE) as Array<Number>)
              map ((item) ->
// The map function is used to iterate over each item in the previously generated array of numbers. It transforms each number into an object using an arrow function (item).
               {
                    name: payload[floor(random() * 313)],
// name: It selects a random element from the payload array by using the above expression
                    age: floor(random() * 96),
// age: It generates a random number between 0 and 96 using the above expression.This will represent the age of each person.
                    id: uuid(),
// This function generates a universally unique identifier (UUID) for each person. 
                    active: random() > 0.3
               
// active: It assigns a boolean value based on the condition random() > 0.3. This expression generates a random number between 0 and 1 using random(), and if the generated number is greater than 0.3, the person will be marked as active.
                })