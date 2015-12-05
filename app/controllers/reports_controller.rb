class ReportsController < ApplicationController
  before_filter :authenticate_teacher!
  def new
    @report = Report.new()
    @teacher = current_teacher
  end

end
