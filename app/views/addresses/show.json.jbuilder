json.address do
  json.first_name address.addressable.first_name
  json.last_name address.addressable.last_name
  json.line_1 address.line_1
  json.line_2 address.line_2
  json.line_3 address.line_3
  json.city address.city
  json.province address.province
  json.postal_code address.postal_code
  json.country address.country
end
