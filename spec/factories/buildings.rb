# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    street_address "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
    description "MyText"
    owner_id 1
  end
end
