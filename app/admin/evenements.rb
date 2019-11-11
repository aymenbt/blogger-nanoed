ActiveAdmin.register Evenement do
  config.per_page = 10
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :start_time
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :start_time]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, :start_time, :description, :image


  index do
    id_column
    column "Titre", :name
    column "Publier le:", :start_time
    column :image
    actions
  end


end
