class CountriesController < ApplicationController

  def index
    @countries = Country.all

    render json: @countries
  end

  def show
    @county = Country.find(params[:id])
    render json: @county
  end

  def create
    @country = Country.create name: params[:name]
    render json: @country
  end

  def update
    @county = Countr.find(params[:id])
    @country.update(name: params[:name])
    render json: @country
  end

 
  def destroy
    @county = Country.find(params[:id])
    @country.destroy
    render json: "Country #{params[:id]} was destroyed"
  end
  
end
