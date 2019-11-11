class NanteController < ApplicationController
  def index
    if params[:tag]
      @nantes = Nante.tagged_with(params[:tag])
      @articles = Article.tagged_with(params[:tag])
      @restaus = Restau.tagged_with(params[:tag])
    else
    @nantes = Nante.all
    @nantes = Nante.order(:title).limit(1).offset(1)
    @nantes = Nante.where(["title LIKE ?", "%#{params[:search]}%"]).order(:title).limit(1).offset(1)
    
    @restaus = Restau.all
    @restaus = Restau.order(:title).limit(4).offset(1)
    @articles = Article.all
    @articles = Article.order(:title).limit(12).offset(1)

    
    end
  end

  def show
    @nante = Nante.find(params[:id])
    @related_nantes = @nante.find_related_tags
    @nantes = Nante.order(:title).limit(4).offset(1)
  end

  def tagged
    if params[:tag]
      @nantes = Nante.tagged_with(params[:tag])
      @articles = Article.tagged_with(params[:tag])
      @restaus = Restau.tagged_with(params[:tag])
    else
    @nantes = Nante.all
    @nantes = Nante.order(:title).limit(1).offset(1)
    @nantes = Nante.where(["title LIKE ?", "%#{params[:search]}%"]).order(:title).limit(1).offset(1)

    @nantes = Nante.order(:title).page(params[:page]).per(1)
    @restaus = Restau.order(:title).page(params[:page]).per(1)
    @articles = Article.order(:title).page(params[:page]).per(1)

    @restaus = Restau.all
    @restaus = Restau.order(:title).limit(10)
    @articles = Article.all
    @articles = Article.order(:title).limit(12)
    end
  end

  private
     def nante_params
       params.require(:nante).permit(:title, :description, :tag_list)
     end
end
