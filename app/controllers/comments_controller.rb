class CommentsController < ApplicationController
    def create
        @nante = Nante.find(params[:nante_id])
        @comment = @nante.comments.create(params[:comment].permit(:name, :body))
        redirect_to nante_path(@nante)
     end
     

end
