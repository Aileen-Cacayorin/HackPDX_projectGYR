class Report < ActiveRecord::Base
  belongs_to :student
  belongs_to :daily_summary
  validates_presence_of :color
  validates_presence_of :status
end
