%dw 2.0
output application/json
//The var arr line declares a variable named arr and assigns it an array of objects. Each object in the array has two properties: "SiteID" and "MerchantID"
var arr= [
  {
  "SiteID": "19",
  "MerchantID": null
 },
 {
  "SiteID": "0006908",
  "MerchantID": "null"
 },
 {
  "SiteID": "0007401",
  "MerchantID": "null"
 },
 {
  "SiteID": "0009415",
  "MerchantID": "386203"
 }]
---
payload filter ((item, index) -> !(arr.MerchantID contains item.MerchantID))
//This line applies a filter operation on the payload, which represents the input data. It filters out elements from the payload array based on a condition.

/*
The condition is defined as a lambda function with two parameters: item and index. It checks if the "MerchantID" property of the current item is not present in the MerchantID properties of any objects in the arr array. The !(arr.MerchantID contains item.MerchantID) expression returns true if the "MerchantID" is not found in arr.MerchantID, and false otherwise.
*/