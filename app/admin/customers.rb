ActiveAdmin.register Customer do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :phone_number, :notes, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as:   :file,
                      hint: f.object.image.present? ? image_tag(f.object.image, size: "300x300") : "No image"
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
