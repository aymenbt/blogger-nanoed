class Article < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comment_articles
    has_many :commentaires
    
    validates :title, presence: true
    acts_as_taggable_on :tags
end
