class ReportsController < ApplicationController
  before_filter :authenticate_teacher!

  def index
    @teacher = current_teacher
    @reports = @teacher.reports
  end

  def new
    @teacher = current_teacher
  end

end
