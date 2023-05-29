//Find Unique Names From the Input
%dw 2.0
output application/json
---
flatten(payload map ((item, index) -> item.name))

// flatten(payload map ((item, index) -> item.name)) distinctBy ((item, index) -> item)

// flatten(payload map ($.name)) distinctBy $