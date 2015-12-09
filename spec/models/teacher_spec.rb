require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it { should have_many :class_groups }
end
