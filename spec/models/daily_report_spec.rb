require 'rails_helper'

RSpec.describe DailyReport, type: :model do
  it { should belong_to :daily_summary }
  it { should have_many :reports }
  it { should accept_nested_attributes_for :reports}
end
