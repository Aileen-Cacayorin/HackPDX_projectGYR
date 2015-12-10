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
    binding.pry
  end

  private
  def daily_summary_params
    # date is messed up in params: "date(1i)"=>"2015", "date(2i)"=>"12", "date(3i)"=>"10"
    params.require(:daily_summary).permit(:date, :text, :homework, daily_report_attributes: [reports_attributes: []])
  end
end

# What params gives you:
# {"utf8"=>"✓",
#  "authenticity_token"=>"tYBAx0zrT1t2VQ9eCtCTTReAvTgp/TdHuiGcIlocBbk+fowVrYEX92TJNINATJ+FQYSAQAyfrjapHA5Qiq6w6g==",
#  "daily_summary"=>
#   {"date(1i)"=>"2015",
#    "date(2i)"=>"12",
#    "date(3i)"=>"10",
#    "text"=>"",
#    "daily_report_attributes"=>
#     {"reports_attributes"=>
#       {"0"=>{"color"=>"green", "status"=>"nil", "comment"=>""},
#        "1"=>{"color"=>"green", "status"=>"nil", "comment"=>""},
#        "2"=>{"color"=>"green", "status"=>"nil", "comment"=>""},
#        "3"=>{"color"=>"green", "status"=>"nil", "comment"=>""}}}},
#  "commit"=>"Save",
#  "controller"=>"daily_summaries",
#  "action"=>"create"}
