ActiveAdmin.register Article do
  config.per_page = 10
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :author, :page_count, :published_at, :nante_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :author, :page_count, :published_at, :nante_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
permit_params :title, :body, :image, :description, :author, :published_at, :restau_id, :article_id, :commentaire, :tag_list

form do |f|
  f.inputs "article Detail" do
    f.input :title
    f.input :description
    f.input :author
    f.input :published_at
    f.input :image
    br
    f.label :tag_list, ("tag separated by commas")
    
    f.input :tag_list
    
    br
    br
    hr
       f.submit
  
  end

end
 
index do
  id_column
  column "Titre", :title
  column "Autheur", :author
  column "Publier le:", :published_at
  column "Tags", :tag_list
  column :image
  actions
end

 


end
