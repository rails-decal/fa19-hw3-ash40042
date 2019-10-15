require_relative '../services/weather_service'

class CitiesController < ApplicationController

  def view
    if(params.has_key?(:city))

      @cities = City.all.values
      @temp = City.all[params[:city].to_sym]
    else
      @cities = City.all.values


	  end
  end
  def new


  end
  def create
    @tempcity = params[:city]
    @templandmark = params[:landmark]
    @temppopulation = params[:population]


    city = City.new(
    	name: @tempcity,
    	landmark: @templandmark,
    	population: @temppopulation
    )

    saves =city.save


    redirect_to "/cities/view"


  end
  def update

  end
  def update2
    @tempcity = params[:city]
    @templandmark = params[:landmark]
    @temppopulation = params[:population]
    @temphash = {:city => @tempcity, :landmark => @templandmark, :population => @temppopulation}
    city = City.all[@tempcity.to_sym]
    city.update(@temphash)

    redirect_to "/cities/view"
  end



end
