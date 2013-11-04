# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    value "MyString"
    kind "MyString"
    address_card_id 1
    trait :without_value do
      value nil
    end
    trait :without_kind do
      kind nil
    end
  end
end
