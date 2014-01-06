# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    street_address "MyString"
    city "MyString"
    state "MyString"
    zip_code "21014"
    description "MyText"
    owner_id 1
  end
end
