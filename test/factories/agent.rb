FactoryGirl.define do
  factory :agent do
    sequence(:first_name) { |n| "Agent#{n}" }
    sequence(:last_name) { |n| "Last#{n}" }   
    description "Lorem ipsum dolor sit amet, eos saperet legendos necessitatibus ad, in cum vidisse ornatus repudiandae. Ei sit paulo quaerendum, ex illud populo possit eos. Elitr altera malorum sit ea, vel nostro delenit cu. Erant minimum volutpat et mea. Eu agam veniam utamur quo, an vel habeo maluisset democritum, an eos mandamus theophrastus. Laudem dicunt no cum, at quidam ancillae eum."
    sequence(:facebook_url) { |n| "http://www.facebook.com/page#{n}" }
    sequence(:twitter_url) { |n| "http://www.twitter.com/user#{n}" }
    sequence(:linkedin_url) { |n| "http://www.linkedin.com/user#{n}" }
    sequence(:website_url) { |n| "http://www.website#{n}.com" }
    email
    phone
  end
end
