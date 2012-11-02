# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title "MyString"
    body "MyText"
    published_at "2012-11-02 19:20:46"
  end
end
