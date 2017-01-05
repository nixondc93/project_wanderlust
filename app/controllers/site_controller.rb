class SiteController < ApplicationController
  def index
    @cities = Post.distinct.pluck(:city)
  end
end
