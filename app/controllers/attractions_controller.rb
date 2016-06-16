class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def buy
    @attraction = Attraction.find(params[:id])
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def cart
    @attraction = Attraction.find(params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attractions_url
    else
      render :new
    end
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    if @attraction.update_attributes(attraction_params)
      redirect_to "/attractions/#{@attraction.id}/buy"
    else
      render :edit
    end
  end

  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
    redirect_to attractions_url
  end

  private
  def attraction_params
    params.require(:attraction).permit(:title, :location, :url, :price)
  end

end
