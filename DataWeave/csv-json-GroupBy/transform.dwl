%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.invoiceId)
pluck ((value, key, index) -> {
"Invoiceid" : (key),
"vendorName": value.vendorName[index],
"total": value.total[index],
"Linteitem" : value map ((item, index) -> {
"item" : item.lineItem,
"amount" : item.lineItemAmount
} ) })

//It groups the input payload by the "invoiceId" field using the groupBy function.
//It then uses the pluck function to transform each group into an object
//The "/* ... */" syntax is used to add comments in DataWeave

/*
[
{
"Invoiceid": "1",
"vendorName": "Amazon",
"total": "100",
"Linteitem": [
{
"item": "Sneakers",
"amount": "75"
},
{
"item": "Shirt",
"amount": "25"
}
]
},
{
"Invoiceid": "2",
"vendorName": "Walmart",
"total": "38",
"Linteitem": [
{
"item": "Paper",
"amount": "10"
},
{
"item": "Towel",
"amount": "28"
}
]
}
]*/

//