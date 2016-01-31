class HomeController < ApplicationController
  def index
  end

  def department
    render :department,layout: 'common'
  end

  def chairman_message
    @chairman = Faculty.find_by_is_chairman(true)
    if !@chairman.nil?
      @chairman_image = @chairman.image_path
    end
    render :chairman_message, layout: 'common'
  end

  def courses
    @courses = Course.all
    render :courses, layout: 'common'
  end
end
