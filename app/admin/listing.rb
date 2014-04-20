ActiveAdmin.register Listing do

  index as: :grid, default: true  do |listing|
    div for: listing do
      h2 link_to(listing.full_address, edit_admin_listing_path(listing))
      div do
        unless listing.images.empty? || listing.images.nil? 
          link_to(image_tag(listing.images.first.image_file.url(:medium)), edit_admin_listing_path(listing))
        end
      end
      div do
        p "Area: " + listing.area
      end

      div do
        p "Price: " + listing.price.to_s
      end

      div do
        p "Agent: " + listing.agent.to_s
      end

    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs "Listing" do
      f.input :agent
      f.input :price
      f.input :address
      f.input :city
      f.input :province, collection: ListingData::PROVINCES.collect {|prov, prov_code| [prov, prov_code] }
      f.input :area, collection: ListingData::AREAS
      f.input :style, collection: ListingData::STYLES
      f.input :property_type, collection: ListingData::PROPERTY_TYPES
      f.input :bedrooms
      f.input :bathrooms
      f.input :year_built
      f.input :description
      f.input :featured
      f.input :open_house
      f.input :sold
      f.input :open_house_date_time, as: :just_datetime_picker

      f.has_many :images, :allow_destroy => true, sortable: :position, :heading => 'Images' do |image_form|
        if image_form.index != "NEW_IMAGE_RECORD"
          image_hint =  f.template.image_tag(f.object.images[image_form.index].image_file.url(:medium))
        end
        image_form.input :image_file, as: :file, :hint => image_hint
      end

    f.actions
    end
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
