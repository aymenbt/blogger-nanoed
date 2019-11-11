class CommentairesController < ApplicationController
    def create
        @nante =Nante.find(params[:nante_id])
        @commentaire = @nante.commentaires.create(params[:commentaire].permit(:name, :body))
        redirect_to nante_path(@nante)
     end


     private
     def commentaire_params
       params.require(:commentaire).permit(:name, :body)
     end
     
end
