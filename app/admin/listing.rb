ActiveAdmin.register Listing do

  form(html: { multipart: true }) do |f|
    f.inputs "Listing" do
      f.input :agent
      f.input :price
      f.input :property_type, collection: ListingData::PROPERTY_TYPES
      f.input :year_built
      f.input :description
      f.input :city
      f.input :province, collection: ListingData::PROVINCES.collect {|prov, prov_code| [prov, prov_code] }
      f.input :address
      f.input :area, collection: ListingData::AREAS
      f.input :style, collection: ListingData::STYLES
      f.input :bedrooms
      f.input :bathrooms
      f.input :featured
      f.input :sold

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
