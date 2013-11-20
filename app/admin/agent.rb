ActiveAdmin.register Agent do


  controller do 
   def permitted_params
      params.permit(agent: [
        :first_name,
        :last_name,
        :phone,
        :email,
        :description])
    end
  end

end
