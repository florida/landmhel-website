FactoryGirl.define do
  factory :inquiry do
    sequence(:name) { |n| "Name#{n} Last" }
    comment "hello there"
    email
    phone
    agent
  end
end