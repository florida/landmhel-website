FactoryGirl.define do
  factory :listing do
    sequence(:address, (201..3755).cycle) { |n| "#{n} Portage Ave." }
    sequence(:area, ListingData::AREAS.cycle) { |n| n }
    sequence(:property_type, ListingData::PROPERTY_TYPES.cycle) { |n| n }
    sequence(:style, ListingData::STYLES.cycle) { |n| n }
    city "Winnipeg"
    province "MB"
    bedrooms { rand(1..10) }
    bathrooms { rand(1..10) }
    price { rand(100000..500000) }
    sequence(:featured, [true, false].cycle) { |n| n }
    sequence(:sold, [true, false].cycle) { |n| n }
    year_built { rand(1800..2013) }
  end
end