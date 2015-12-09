class DailyReport < ActiveRecord::Base
  belongs_to :daily_summary
  has_many :reports
  accepts_nested_attributes_for :reports
end
