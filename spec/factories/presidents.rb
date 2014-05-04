# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :president do
    presidency "MyString"
    president "MyString"
    took_office "MyString"
    left_office "MyString"
    party "MyString"
    picture "MyString"
    state "MyString"
    term "MyString"
    biography "MyText"
  end
end
