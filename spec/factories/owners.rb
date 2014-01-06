# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    f_name "MyString"
    l_name "MyString"
    email "MyString@gmail.com"
    company "MyString"
  end
end
