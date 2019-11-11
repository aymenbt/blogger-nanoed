class SearchController < ApplicationController


    def results
        @nantes = Nante.where('title LIKE ?', "%#{params[:q]}%")
        @articles = Article.where('title LIKE ?', "%#{params[:q]}%")
        @restaus = Restau.where('title LIKE ?', "%#{params[:q]}%")


        

        @articles = Article.order(:title).page(params[:page]).per(2) 
        @nantes = Nante.order(:title).page(params[:page]).per(2)
        @restaus = Restau.order(:title).page(params[:page]).per(2)
    end
       
end
