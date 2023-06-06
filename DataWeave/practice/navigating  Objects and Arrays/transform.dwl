%dw 2.0
output json
---
{
    "descendant": payload..id,
    "multivalue": payload.*id,
    "multivalueSecondLevel": payload.secondLevel.*id,
    "multivalueThirdLevel": payload.secondLevel.thirdLevel.*id,
    "allTheIds" : payload..*id
}


/*

payload..id retrieves all id values from any level of the payload object.

payload.*id retrieves all id values from the top level of the payload object. The .* operator is used to get all direct children elements with the key id.

payload..*id retrieves all id values from any level of the payload object, including nested objects. The ..* operator performs a deep search and selects all elements with the key id.

*/