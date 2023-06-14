%dw 2.0
output application/csv
---
payload map (employee) -> {
  name:     employee.name,
  job:      employee.job,
  age:      employee.age,
  employed: true
}