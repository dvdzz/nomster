class PhotosController < ApplicationController
  before_action :authenticate_user!


  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photos_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def index
      @photos = Photo.all
  end

    private

  def photo_params
    params.require(:photo).permit(:image, :caption)
  end
end