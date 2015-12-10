class DailySummariesController < ApplicationController
  before_filter :authenticate_teacher!

  def new
    @teacher = current_teacher
    @class_group = ClassGroup.find(params[:class_group_id])
    @daily_summary = @class_group.daily_summaries.new
    @daily_report = @daily_summary.build_daily_report
    @class_group.students.each do |student|
      @daily_report.reports.build(student_id: student.id)
    end
  end

  def create

  end
end
