class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.datetime :date
      t.string :daily_summary
      t.string :comments
      t.string :homework
      t.string :color
      t.string :status
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
