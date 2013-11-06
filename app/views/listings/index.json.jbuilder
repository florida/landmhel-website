json.array!(@listings) do |listing|
  json.extract! listing, :property_type, :neighbourhood, :year_built, :storeys, :description, :address
  json.url listing_url(listing, format: :json)
end
