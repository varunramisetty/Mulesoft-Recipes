%dw 2.0
output application/json
---
// payload replace ("\"") with ""

(payload replace /[^a-z0–9A-Z]/ with "") as Number

// (payload read  ('application/json')) as Number