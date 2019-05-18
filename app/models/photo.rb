class Picture < ActiveRecord::Base
  mount_uploader :Picture, PictureUploader
  belongs_to :user
  belongs_to :place
end