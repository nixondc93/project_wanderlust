class CitiesController < ApplicationController

  def show
    @city = Post.where({city: params[:name]}).order(:created_at).reverse_order
    $current_city = params[:name]

  end

end
