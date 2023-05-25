%dw 2.0
output application/json
import lines from dw::core::Strings
var defeats = {
    R: "S",
    P: "R",
    S: "P"
}
fun getScore(opponent:String, me:String): Number =
    if (opponent == me) 3
    else if (defeats[me] == opponent) 6
    else 0
---
sum(lines(payload) map getScore($[0],$[-1]))



// import lines from dw::core::Strings: This line imports the lines function from the Strings module. The lines function splits a string into an array of lines.

// var defeats = {...}: This variable defeats is an object that represents the possible outcomes of a game where one element defeats another. Each key-value pair in the defeats object represents a pair of game elements, where the key defeats the corresponding value. For example, "R" defeats "S" (rock defeats scissors).

// fun getScore(opponent:String, me:String): Number = ...: This is a function definition called getScore. It takes two parameters: opponent (representing the opponent's game element) and me (representing the player's game element). The return type of the function is Number.

// if (opponent == me) 3: This line checks if the opponent's game element is the same as the player's game element. If they are the same, it means it's a tie, and the function returns a score of 3.

// else if (defeats[me] == opponent) 6: This line checks if the player's game element defeats the opponent's game element based on the defeats object. If the player's element defeats the opponent's element, the function returns a score of 6.

// else 0: If none of the above conditions are met, it means the opponent's element defeats the player's element or they are different elements without a winning relationship. In such cases, the function returns a score of 0.

// sum(lines(payload) map getScore($[0],$[-1])): This line performs the main computation. It takes the input payload (assuming it is a string), splits it into an array of lines using the lines function, and then applies the getScore function to each line. The map function applies the getScore function to each element of the array. Finally, the sum function calculates the sum of all the scores obtained.