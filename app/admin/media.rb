ActiveAdmin.register Media do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :desc, :url, :kind, :display, :order, :product_id
  #
  # or
  #
  permit_params do
    permitted = [:title, :desc, :url, :kind, :display, :order, :product_id]
    # permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  form do |f|
    f.inputs 'Content' do 
      f.input :product
      f.input :title
      f.input :desc
      f.input :url
      f.input :order
      f.input :display, as: :select, collection: Media.displays.keys, include_blank: false
      f.input :kind, as: :select, collection: Media.kinds.keys, include_blank: false
    end
    f.actions
  end
  
end
