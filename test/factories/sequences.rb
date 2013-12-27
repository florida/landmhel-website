FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  sequence(:phone, (1000..9999).cycle) { |n| "204555#{n}".to_i }
end