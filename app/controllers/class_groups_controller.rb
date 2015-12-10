class ClassGroupsController < ApplicationController
  before_filter :authenticate_teacher!

  def index
    @teacher = current_teacher
    @class_groups = @teacher.class_groups
  end

  def show
    @class_group = ClassGroup.find(params[:id])
    @students = @class_group.students
  end
end
