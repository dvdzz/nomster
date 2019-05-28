class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @places = Place.all
    @places = Place.order(:id).paginate(:page => params[:page], :per_page => 10) 
  end

  def new
    @place = Place.new
  end

  def create
    @place = current_user.places.create(place_params)
      if @place.valid?
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
    @place = Place.find(params[:id])
    @comment = Comment.new
    @image = Image.new
  end

  def edit
    @place = Place.find(params[:id])
      if @place.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
  end

  def update
    @place = Place.find(params[:id])
      if @place.user != current_user
        return render plain: 'Not Allowed', status: :forbidden
      end   
      if @place.valid?  @place.update_attributes(place_params)  
      else render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @place = Place.find(params[:id])
    
      if @place.user != current_user
        return render plain: 'Not Allowed', status: :forbidden
      else
      @place.destroy 
      redirect_to root_path
    end
  end

  def place_params
    params.require(:place).permit(:name, :description, :address, :comment, :image, :caption)
  end
end
