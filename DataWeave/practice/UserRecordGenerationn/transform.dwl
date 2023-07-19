%dw 2.0
output application/json
---
0 to 200 map {
  Name: "Ben" ++ $ ,
  LastName: payload.LastName,
  email: "testUser" ++ $ ++ "@gmail.com",
  Approved: payload.Approved
}

//Another way 
// %dw 2.0
// import * from dw::core::Strings
// output application/json
// ---
// 0 to 200 map
// {
//     Name: substringBefore(payload.Name,'1') ++ $,
//         LastName: payload.LastName,
//     email: substringBefore(payload.email,'0') ++ $ ++ substringAfter(payload.email,'0'),
//     Approved: payload.Approved
// }
	