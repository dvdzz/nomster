class ImagesController < ApplicationController
  before_action :authenticate_user!


  def create
    @place = Place.find(params[:place_id])
    @place.images.create(image_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def index
      @images = Image.all
  end

    private

  def image_params
    params.require(:image).permit(:picture,:caption)
  end
end