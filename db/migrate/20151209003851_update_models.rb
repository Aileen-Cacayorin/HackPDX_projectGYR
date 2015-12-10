class UpdateModels < ActiveRecord::Migration
  def change
    create_table(:teachers) do |t|
      t.string :first_name
      t.string :last_name
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

    end
    add_index :teachers, :email,                unique: true
    add_index :teachers, :reset_password_token, unique: true

    create_table :class_groups do |t|
      t.string :name
      t.integer :teacher_id
    end

    create_table :daily_summaries do |t|
      t.integer :class_group_id
      t.datetime :date
      t.string :text
      t.string :homework
    end

    create_table :reports do |t|
      t.string :color
      t.string :status
      t.string :comment
      t.integer :student_id
      t.integer :daily_summary_id
    end

    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :parent_email
    end

    create_table :class_groups_students, id: false do |t|
      t.integer :student_id
      t.integer :class_group_id
    end
  end
end
