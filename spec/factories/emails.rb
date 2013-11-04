# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email do
    value "testing@tukaiz.com"
    kind "MyString"
    address_card_id 1
    trait :without_value do
      value nil
    end
    trait :without_kind do
      kind nil
    end
    trait :with_bad_value do
      value "MyString"
    end
  end
end
