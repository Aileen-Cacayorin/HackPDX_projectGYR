class DailySummariesController < ApplicationController
  before_filter :authenticate_teacher!

  def new
    @teacher = current_teacher
    @class_group = ClassGroup.find(params[:class_group_id])
    @daily_summary = @class_group.daily_summaries.new
    @class_group.students.each do |student|
      @daily_summary.reports.build(student_id: student.id)
    end
  end

  def create
    @class_group = ClassGroup.find(params[:class_group_id])
    daily_summary = @class_group.daily_summaries.new(daily_summary_params)
    if daily_summary.save
      redirect_to root_path
    end
  end

  private
  def daily_summary_params
    params.require(:daily_summary).permit(:date, :text, :homework, reports_attributes: [:student_id, :color, :status, :comment])
  end
end
