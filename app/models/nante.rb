class Nante < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :articles
    has_many :restaus
    has_many :commentaires
    has_many :comments
    validates :title, presence: true
    acts_as_taggable_on :tags
end
