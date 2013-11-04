# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address_card do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    trait :with_addresses do
      ignore do
        addresses_count 5
      end

      after(:create) do |address_card, evaluator|
        FactoryGirl.create_list(:address, evaluator.addresses_count, address_card: address_card)
      end
    end
  end
end
