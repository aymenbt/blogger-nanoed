ActiveAdmin.register_page "Dashboard" do

  

  
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    


    columns do
      column do
        panel "Recement Créer " do
          table_for Restau.order('id desc').limit(10).each do |restau|
            column (:restau_id) {|restau| link_to(restau.id, admin_restau_path(restau)) }
            column (:title) {|restau| link_to(restau.title, admin_restau_path(restau)) }
            column "Publier le:", :published_at
          end # table

          

        end # panel
      end # column
    
  
    
      column do
      panel "Recement Créer " do  
        table_for Article.order('id desc').limit(10).each do |article|
          column (:article_id) {|article| link_to(article.id, admin_article_path(article)) }
          column (:title) {|article| link_to(article.title, admin_article_path(article)) }
          column "Publier le:", :published_at
        end # table
      end
      end

    


      column do
        panel "Recement Créer " do  
          table_for Nante.order('id desc').limit(10).each do |nante|
            column (:nante_id) {|nante| link_to(nante.id, admin_nante_path(nante)) }
            column (:title) {|nante| link_to(nante.title, admin_nante_path(nante)) }
            column "Publier le:", :published_at
          end # table
        end
        end


        column do
          panel "Recement Créer " do  
            table_for Evenement.order('id desc').limit(10).each do |evenement|
              column (:evenement_id) {|evenement| link_to(evenement.id, admin_evenement_path(evenement)) }
              column (:name) {|evenement| link_to(evenement.name, admin_evenement_path(evenement)) }
              column "Date de heure de l'evenement:", :start_time
            end # table
          end
          end

    end
  
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content  
  


  
   

end
