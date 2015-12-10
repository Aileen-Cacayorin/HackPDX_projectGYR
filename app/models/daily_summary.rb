class DailySummary < ActiveRecord::Base
  belongs_to :class_group
  has_one :daily_report
  validates_presence_of :date
  validates_presence_of :text
  accepts_nested_attributes_for :daily_report
end
