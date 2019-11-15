class SearchController < ApplicationController


    def results
        @nantes = Nante.where('title LIKE ?', "%#{params[:q]}%")
        @articles = Article.where('title LIKE ?', "%#{params[:q]}%")
        @restaus = Restau.where('title LIKE ?', "%#{params[:q]}%")

        
       
        

       


    end
       
end
