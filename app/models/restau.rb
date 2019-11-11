class Restau < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :recomments
    has_many :commentaires
    validates :title, :image, presence: true
    acts_as_taggable_on :tags
end
