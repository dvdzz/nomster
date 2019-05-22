class Image < ApplicationRecord
  mount_uploader :images, ImageUploader
  belongs_to :user
  belongs_to :place
end

