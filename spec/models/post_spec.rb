require 'rails_helper'

RSpec.describe Post, type: :model do
  # Association test
  it { should belong_to(:theme) }
  it { should belong_to(:user) }
  it { should have_many(:comments).dependent(:destroy) }

  # Validation test
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
  it { should validate_length_of(:title).is_at_least(4).is_at_most(512) }
  it { should validate_length_of(:content).is_at_least(4).is_at_most(16777216) }
end
