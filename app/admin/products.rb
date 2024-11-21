ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :desc, :active, :highlight_title, :highlight_desc

  remove_filter :medias

  #
  # or
  #
  permit_params do
    permitted = [:name, :desc, :active, :highlight_title, :highlight_desc]
    # permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
