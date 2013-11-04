# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    line_1 { Faker::Address.street_address(include_secondary = false) }
    line_2 { Faker::Address.street_address(include_secondary = false) }
    line_3 { Faker::Address.street_address(include_secondary = false) }
    city { Faker::Address.city }
    province {  Faker::Address.us_state_abbr }
    postal_code { Faker::Address.zip_code }
    country { Faker::Address.country }
  end
end
