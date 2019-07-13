class ImagesController < ApplicationController
  before_action :authenticate_user!
 

  def create
    @place = Place.find(params[:place_id])
    @place.images.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:image).permit(:caption, :image)
  end
end