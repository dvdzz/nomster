class ImagesController < ApplicationController
  before_action :authenticate_user!
 

  def create
    @place = Place.find(params[:place_id])
    @place.images.create
    redirect_to place_path(@place)
  end

  def index
     @images = Image.all
  end


  private

  def photo_params
    params.require(:image).permit(:caption, :image)
  end
end