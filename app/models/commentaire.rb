class Commentaire < ApplicationRecord
  belongs_to :nante
  belongs_to :article
  belongs_to :restau
end
