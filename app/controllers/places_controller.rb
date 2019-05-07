class PlacesController < ApplicationController
  def index
    @places = Place.all
    @page = Place.order(:id).paginate(:page => params[:page], :per_page => 5) 
    
  end

  
  def new
    @place = Place.new
  end
end