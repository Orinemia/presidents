# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :president do
    presidentNumber 1
    name "MyString"
    biography "MyText"
    termStart "MyString"
    termEnd "MyString"
    partyAffiliation "MyString"
    picture "MyString"
    state "MyString"
    term 1
  end
end
