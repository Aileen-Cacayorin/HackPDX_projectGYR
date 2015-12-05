class ReportsController < ApplicationController
  before_filter :authenticate_teacher!
  
  def new
    @teacher = current_teacher
  end

end
