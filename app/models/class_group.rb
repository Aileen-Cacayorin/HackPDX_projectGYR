class ClassGroup < ActiveRecord::Base
  belongs_to :teacher
  has_many :daily_summaries
  has_and_belongs_to_many :students
end
