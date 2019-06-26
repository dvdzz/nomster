class ImagesController < ApplicationController
  before_action :authenticate_user!


  def create
    @place = Place.find(params[:place_id])
    @place.images.create(image_params)
    redirect_to place_path(@place)
  end

    private

  def image_params
    params.require(:image).permit(:picture,:caption)
  end
end