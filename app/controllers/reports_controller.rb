class ReportsController < ApplicationController
  before_filter :authenticate_teacher!

  def index
    @teacher = current_teacher
    @reports = @teacher.reports
  end

  def new
    @teacher = current_teacher
  end

  def create
    @teacher = current_teacher
    date = Time.now
    daily_summary = params['report'].first['daily_summary'] || nil
    homework = params['report'].first["homework"] || nil
    @teacher.students.each do |student|
      color = params[student.id.to_s].first["color"] || nil
      status = params[student.id.to_s].first["status"] || nil
      comments = params[student.id.to_s].first["comments"] || nil
      Report.create({student_id: student.id, color: color, status: status, comments: comments, daily_summary: daily_summary, homework: homework, date: date, teacher: @teacher})
    end
    redirect_to reports_path
  end



end
