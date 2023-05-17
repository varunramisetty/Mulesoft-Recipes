//update-single-values-in-nested-data-structures
%dw 2.0
output application/json
---
payload map ( (user) ->
    user update 
// This syntax updates the user object with the specified transformations.    
    {
        case name at .name if (name == "varun") -> name ++" (varunxnrun)"
// This is a conditional transformation that checks if the value of name is equal to "varun". If the condition is met, it concatenates the string "(varunxnrun)" to the name value.
        case age at .age-> age + 1
// This is another case that increments the age value by 1.
        case ID at .ID -> ID +10
// This is another case that increments the ID value with 10.

    }

)