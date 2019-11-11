class RecommentsController < ApplicationController
    def create
        @restau = Restau.find(params[:restau_id])
        @recomment = @restau.recomments.create(params[:recomment].permit(:name, :body))
        redirect_to restau_path(@restau)
     end
end
