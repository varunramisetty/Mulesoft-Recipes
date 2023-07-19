%dw 2.0
var dateTime1 = "2023-06-10T14:44:00" as DateTime
var dateTime2 = "2023-06-10T14:47:00" as DateTime
output application/json  
---
(dateTime2 - dateTime1) as Period - |PT2M00S| > 0

//The given DataWeave script calculates the time difference between two date-time values, 'dateTime1' and 'dateTime2', and checks if the difference is greater than 2 minutes. 
//The output will be 'true' if the difference is more than 2 minutes, otherwise, it will be 'false'.