class PartenaireController < ApplicationController
  def index
    if params[:tag]
      @nantes = Nante.tagged_with(params[:tag])
      @articles = Article.tagged_with(params[:tag])
      @restaus = Restau.tagged_with(params[:tag])
    else
    @partenaires = Partenaire.all
    end
  end
  
  def show
  end
end
