class CitiesController < ApplicationController
  def index
    @cities = City.all

    render json: @cities
  end

  def show
    @city = City.find(params[:id])
    render json: @city
  end

  def create
    @city = City.create(name: params[:name])
    render json: @city
  end


  def update
      @city = City.find(params[:id])
      @city.update(name: params[:name])
      render json: @city
  end

  def destroy
    @city =City.find(params[:id])
    @city.destroy
    render json: "city #{params[:id]} was destroyed"
  end

end
