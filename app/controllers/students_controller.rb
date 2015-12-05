class StudentsController < ApplicationController
  before_filter :authenticate_teacher!

  def index
    @teacher = current_teacher
    @students = @teacher.students
  end

  def new
    @teacher = current_teacher
    @student = Student.new
  end

  def create
    @teacher = current_teacher
    @student = Student.create(student_params)
    @student.teacher = @teacher
    @student.save
    redirect_to teacher_students_path(@teacher)
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :parent_email)
  end
end
