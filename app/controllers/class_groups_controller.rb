class ClassGroupsController < ApplicationController
  before_filter :authenticate_teacher!

  def index
    @teacher = current_teacher
    @class_groups = @teacher.class_groups
  end
end
