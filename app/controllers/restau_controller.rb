class RestauController < ApplicationController
  def index
    if params[:tag]
      @restaus = Restau.tagged_with(params[:tag])
      @nantes = Nante.tagged_with(params[:tag])
      @articles = Article.tagged_with(params[:tag])
    else
    @restaus = Restau.all
    @restaus = Restau.order(:title).page(params[:page]).per(9)
    
    @articles = Article.all
    @nantes = Nante.all
    
   end
  end
  
  def show
    @restau = Restau.find(params[:id])
    @restaus = Restau.order(:title).limit(2)
   
  end
end
