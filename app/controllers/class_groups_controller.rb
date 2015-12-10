class ClassGroupsController < ApplicationController
  before_filter :authenticate_teacher!

  def index
    @teacher = current_teacher
    @class_groups = @teacher.class_groups
  end

  def show
    @teacher = current_teacher
    @class_group = ClassGroup.find(params[:id])
    @daily_summary = @class_group.daily_summaries.new
    # binding.pry
    daily_report = @daily_summary.build_daily_report
    @class_group.students.count.times { daily_report.reports.build }
  end
end
