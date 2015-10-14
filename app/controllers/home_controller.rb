class HomeController < ApplicationController
  def index
  end

  def about
    render :about,layout: 'common'
  end
end
