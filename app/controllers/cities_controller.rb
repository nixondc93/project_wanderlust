class CitiesController < ApplicationController


  def index
    @cities = City.all
  end

  def show
    @city = Post.where({city: params[:name]})
    $current_city = params[:name]
    
  end

end
