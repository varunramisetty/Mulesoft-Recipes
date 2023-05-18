//convert-a-key-value-collection-to-a-simple-key-value-lookup
%dw 2.0
output application/json
---
(payload map (item, index) ->  (item.Api_Centrix__c) : item.Id)
// This part performs a mapping operation on the payload variable. It iterates over each item in the payload and creates a key-value pair where the key is item.Api_Centrix__c and the value is item.Id.
 reduce ($$ ++ $)
//reduce concatenates all the key-value pairs together to form a single JSON object