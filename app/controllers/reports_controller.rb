class ReportsController < ApplicationController

  def new
    @report = Report.new()
    @teacher = current_user
  end

end
