ActiveAdmin.register Assignment do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :topic, :content
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    column :id
    column :topic
    column :content
    
    actions
  end

  form do |f|
    f.inputs 'Assignments' do
    f.input :topic
    f.input :content, as: :ckeditor
  end
  f.actions
  end

end
