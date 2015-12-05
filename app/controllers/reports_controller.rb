class ReportsController < ApplicationController
  before_filter :authenticate_teacher!

  def new
    @teacher = current_teacher
    # binding.pry
  end

  def create
    binding.pry
  end

end
