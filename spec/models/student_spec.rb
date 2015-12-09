require 'rails_helper'

RSpec.describe Student, type: :model do
  it { should have_many :reports }
  it { should have_and_belong_to_many :class_groups }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :parent_email }
end
