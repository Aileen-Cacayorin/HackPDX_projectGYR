class StudentsController < ApplicationController

  def index
    @teacher = current_teacher
    @students = @teacher.students
  end
end
