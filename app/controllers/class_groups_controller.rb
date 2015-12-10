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
    @daily_report = @daily_summary.build_daily_report
    @class_group.students.each do |student|
      @daily_report.reports.build(student_id: student.id)
    end
  end
end
