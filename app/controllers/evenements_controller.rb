class EvenementsController < InheritedResources::Base

  def index
    @evenements = Evenement.all
    
  end

  private

    def evenement_params
      params.require(:evenement).permit(:name, :description, :start_time)
    end

end
