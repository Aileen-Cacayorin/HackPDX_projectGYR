class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :parent_email
      t.integer :teacher_id
      t.timestamps null: false
    end
  end
end
