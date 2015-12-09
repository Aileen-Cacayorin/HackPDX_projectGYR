require 'rails_helper'

RSpec.describe ClassGroup, type: :model do
  it { should belong_to :teacher }
  it { should have_and_belong_to_many :students }
end
