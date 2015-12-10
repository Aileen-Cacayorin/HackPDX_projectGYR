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
    binding.pry
  end

  private
  def daily_summary_params
    # date is messed up in params: "date(1i)"=>"2015", "date(2i)"=>"12", "date(3i)"=>"10"
    params.require(:daily_summary).permit(:date, :text, :homework, report_attributes: [])
  end
end

# What params gives you:
# {"utf8"=>"✓",
#  "authenticity_token"=>"omLoo4uJwfs0nl3FjyASkr63ld4JV+04eBud4A65Md0FmTC89LlplYzTodWpjMdaPMn/kaaym7FF5ClLWNDZEw==",
#  "daily_summary"=>
#   {"date(1i)"=>"2015",
#    "date(2i)"=>"12",
#    "date(3i)"=>"10",
#    "text"=>"learning stuff",
#    "homework"=>"makin' stuff",
#    "reports_attributes"=>
#     {"0"=>{"color"=>"green", "status"=>"absent", "comment"=>"aileen's comment"},
#      "1"=>{"color"=>"yellow", "status"=>"nil", "comment"=>"Shannon's comment"},
#      "2"=>{"color"=>"red", "status"=>"nil", "comment"=>"Austin's commment"},
#      "3"=>{"color"=>"green", "status"=>"nil", "comment"=>"Caterina's comment"}}},
#  "commit"=>"Save",
#  "controller"=>"daily_summaries",
#  "action"=>"create"}
