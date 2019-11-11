class Evenement < ApplicationRecord
    acts_as_taggable_on :tags
    mount_uploader :image, ImageUploader
end
