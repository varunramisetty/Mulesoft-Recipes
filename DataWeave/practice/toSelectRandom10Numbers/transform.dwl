%dw 2.0
output json
var result = {"status" : "ok"}
---
{
    message: if(result.status == "ok") "Request successfully processed."
     else "Please try again later."
}


/*If everything went well, the result will contain {"status": "ok"}, if not the result will contain {"status": "failed"}. For the sake of the exercise, this will be available in a result variable you can edit.

Output {"message": "Request successfully processed."} if the status is "ok", and output {"message": "Please try again later."} if the status is anything else. Your solution should be able to compensate for both result types.

*/