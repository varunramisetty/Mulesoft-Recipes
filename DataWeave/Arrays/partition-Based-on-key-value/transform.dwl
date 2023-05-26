%dw 2.0
output application/json
---
// the groupBy function to group the payload by the "message" field. It then applies the pluck function to each group.

 payload groupBy ($.message) pluck ((value, key, index) -> {
    ID: value.id joinBy ",",
// The id property is obtained by joining all the "id" values in the group using a comma separator.
    NAME: key,
    Area: value.Area distinctBy ($ ) joinBy  ""
// The Area property is obtained by extracting the distinct values of the "Area" field in the group and joining them together without any separator.
})