# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    name "MyString"
    disporder 1
    displayed false
  end
end
