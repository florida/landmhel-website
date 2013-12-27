FactoryGirl.define do
  factory :image do
    sequence(:image_file, (1..4).cycle) { |n| File.new("#{Rails.root}/test/fixtures/images/house_#{n}.png") }
  end
end