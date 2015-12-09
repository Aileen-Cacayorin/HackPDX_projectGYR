require 'rails_helper'

RSpec.describe Report, type: :model do
  it { should belong_to :student }
  it { should belong_to :daily_report }
  it { should validate_presence_of :color }
  it { should validate_presence_of :status }
end
