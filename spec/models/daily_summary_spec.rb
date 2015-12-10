require 'rails_helper'

RSpec.describe DailySummary, type: :model do
  it { should belong_to :class_group }
  it { should have_many :reports }
  it { should validate_presence_of :date }
  it { should validate_presence_of :text }
  it { should accept_nested_attributes_for :reports}
end
