ActiveAdmin.register Listing do

  form(:html => { :multipart => true }) do |f|
    f.inputs "Listing" do 
      f.input :property_type
      f.input :year_built
      f.input :storeys
      f.input :description
      f.input :address
      f.input :area
      f.input :building_type
      f.input :bedrooms
      f.input :bathrooms
      f.input :featured
      f.input :sold

      f.has_many :images do |image_form|
        image_form.input :image_file, as: :file
        #image_form.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
      end

      # f.has_many :images do |image_form|
      #   image_form.input :image, as: :file
      #   image_form.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
      # end

    f.actions
    end
  end

  controller do 
    def permitted_params
      params.permit!
    end
  end

end
