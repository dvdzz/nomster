class Image < ApplicationRecord
  mount_uploader :PictureUploader
  belongs_to :user
  belongs_to :place
  belongs_to :caption
end

