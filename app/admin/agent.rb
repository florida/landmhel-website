ActiveAdmin.register Agent do

  index as: :grid do |agent|
    div for: agent do
      h2 link_to(agent.to_s, edit_admin_agent_path(agent))
      div do
        link_to(image_tag(agent.avatar.url, style: "width: 200px"), edit_admin_agent_path(agent))
      end
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs "Agent" do
      f.input :first_name
      f.input :last_name
      f.input :phone
      f.input :email
      f.input :description
      f.input :facebook_url
      f.input :twitter_url
      f.input :linkedin_url
      f.input :website_url
      f.input :avatar, as: :file, :hint => f.object.avatar.url
      #  image_form.input :image_file, as: :file, :hint => image_hint

    f.actions
    end
  end

  controller do
   def permitted_params
      params.permit(agent: [
        :first_name,
        :last_name,
        :phone,
        :email,
        :description,
        :avatar,
        :facebook_url,
        :twitter_url,
        :linkedin_url,
        :website_url])
    end
  end

end
