%dw 2.0
import lines, isAlphanumeric, mapString, reverse from dw::core::Strings
output application/json
---
sum(lines(payload) map (line) -> do {
    var clearLine = lower(line) mapString (
        if (isAlphanumeric($)) $
        else ""
    )
    var isPalindrome = clearLine == reverse(clearLine)
    ---
    if (isPalindrome) sizeOf(line)
    else 0
})

// import lines, isAlphanumeric, mapString, reverse from dw::core::Strings: This line imports specific functions from the Strings module in DataWeave, namely lines, isAlphanumeric, mapString, and reverse. These functions are used later in the code for string manipulation.

// output application/json: This line specifies that the output of the DataWeave transformation will be in JSON format.

// ---: This triple hyphen indicates the beginning of a DataWeave expression.

// sum(lines(payload) map (line) -> do {: This line starts a sum function that calculates the sum of the values in an array. The array is obtained by applying the map function to each line in the payload. The lines function splits the payload string into an array of lines.

// var clearLine = lower(line) mapString (...): This line declares a variable clearLine that holds the transformed version of each line. The lower function converts the line to lowercase, and the mapString function applies a transformation to each character in the line.

// if (isAlphanumeric($)) $ else "": This is the transformation applied to each character in the line. If a character is alphanumeric, it is kept as is ($ represents the current character), otherwise, it is replaced with an empty string.

// var isPalindrome = clearLine == reverse(clearLine): This line declares a variable isPalindrome which is true if clearLine is equal to its reversed version, indicating that the line is a palindrome. The reverse function reverses the characters in the clearLine.

// ---: This triple hyphen indicates the beginning of a new DataWeave expression.

// if (isPalindrome) sizeOf(line) else 0: This line checks if isPalindrome is true. If it is, it returns the length of the original line (using the sizeOf function), indicating that it is a palindrome. Otherwise, it returns 0.