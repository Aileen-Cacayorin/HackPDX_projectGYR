require 'rails_helper'

RSpec.describe DailySummary, type: :model do
  it { should belong_to :class_group }
  it { should have_one :daily_report }
  it { should validate_presence_of :date }
  it { should validate_presence_of :text }
end
