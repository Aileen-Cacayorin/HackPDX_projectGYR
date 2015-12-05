class AddTeacherIdToReport < ActiveRecord::Migration
  def change
    add_column :reports, :teacher_id, :integer
  end
end
