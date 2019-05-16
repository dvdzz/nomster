class Picture < ActiveRecord::Base
  mount_uploader :Picture, PictureUploader
end