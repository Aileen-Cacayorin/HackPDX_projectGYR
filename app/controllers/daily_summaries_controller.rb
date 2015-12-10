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
    # date is messed up in params: "date(1i)"=>"2015", "date(2i)"=>"12", "date(3i)"=>"10"
    params.require(:daily_summary).permit(:date, :text, :homework, reports_attributes: [:student_id, :color, :status, :comment])
  end
end

# What params gives you:
# {"utf8"=>"✓",
#  "authenticity_token"=>"POLVJChv2ofG7al8qhKIhzqw0evTbVTlZkWy2qT0KwWbGQ07V19y6X6gVWyMvl1PuM67pHyIImxbugZx8p3Dyw==",
#  "daily_summary"=>
#   {"date(1i)"=>"2015",
#    "date(2i)"=>"12",
#    "date(3i)"=>"10",
#    "text"=>"leanring",
#    "homework"=>"homeworkin",
#    "reports_attributes"=>
#     {"0"=>{"student_id"=>"1", "color"=>"green", "status"=>"absent", "comment"=>"aileen"},
#      "1"=>{"student_id"=>"2", "color"=>"yellow", "status"=>"nil", "comment"=>"Shannon"},
#      "2"=>{"student_id"=>"3", "color"=>"red", "status"=>"tardy", "comment"=>"Austin"},
#      "3"=>{"student_id"=>"4", "color"=>"yellow", "status"=>"nil", "comment"=>"caterina"}}},
#  "commit"=>"Save",
#  "controller"=>"daily_summaries",
#  "action"=>"create"}
