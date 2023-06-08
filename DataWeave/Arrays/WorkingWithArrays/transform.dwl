%dw 2.0
output application/json
---
//payload filter ((item, index) -> item.status == 'ACTIVE') 

/*It will return only the items from the payload that have an ACTIVE status*/


// payload map (item, index) -> {productId: item.id, name: item.productName }

/*This expression maps each item in the payload to a new object with properties productId and name, extracted from the original item */

 payload distinctBy ((item, index) -> item.id)

/*This expression returns a distinct set of items from the payload based on the id property. It removes any duplicate items */

// payload groupBy ((item, index) -> item.vendor)

/*This expression groups the items in the payload based on the vendor property. It returns an object where the keys are the unique vendor values, and the values are arrays of items belonging to each vendor */

// payload.tax reduce ((item, accumulator) -> item + accumulator)

/*This expression calculates the sum of the tax property for all items in the payload. It uses the reduce function to iterate over the items and accumulate the total tax*/