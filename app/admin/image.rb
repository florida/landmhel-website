ActiveAdmin.register Image do

  controller do
    def permitted_params
      params.permit(image: [
        :image_file])
    end
  end

end
