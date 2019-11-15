class ArticleController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
      @nantes = Nante.tagged_with(params[:tag])
      @restaus = Restau.tagged_with(params[:tag])
    else
      @articles = Article.all
      @articles = Article.order(:title).page(params[:page]).per(8)
    
      
     @nantes = Nante.all
     @nantes = Nante.order(:title).limit(9)
     @restaus = Restau.all
     @evenements = Evenement.all
    end 
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.order(:title).limit(2).offset(1)
  end

  

private

  def article_params
    params.require(:article).permit(:title, :body, :description, :image, :author, :published_at, :commentaire, :tag_list)
  end

end
