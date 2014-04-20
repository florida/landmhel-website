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
    description "Lorem ipsum dolor sit amet, eos saperet legendos necessitatibus ad, in cum vidisse ornatus repudiandae. Ei sit paulo quaerendum, ex illud populo possit eos. Elitr altera malorum sit ea, vel nostro delenit cu. Erant minimum volutpat et mea. Eu agam veniam utamur quo, an vel habeo maluisset democritum, an eos mandamus theophrastus. Laudem dicunt no cum, at quidam ancillae eum."
    agent
      factory :listing_with_images do
        ignore do
          image_count 2
        end

        after(:create) do |listing, evaluator|
          create_list(:image, evaluator.image_count, listing: listing)
        end
      end
  end
end