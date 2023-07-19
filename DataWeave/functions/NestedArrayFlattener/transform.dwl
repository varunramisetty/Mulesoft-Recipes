%dw 2.0
output application/json
---
flatten(flatten(flatten(payload flatMap ($))))

//The given DataWeave script takes a nested array structure as input and flattens it to produce a single-level array containing all the objects within the nested arrays.
//The script uses the "flatten" function multiple times to ensure all levels of nesting are removed, resulting in a final array with all the objects from the original nested structure.