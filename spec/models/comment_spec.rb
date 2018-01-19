require 'rails_helper'

RSpec.describe Comment, type: :model do
  # Association test
  it { should belong_to(:post) }
  it { should belong_to(:user) }

  # Validation test
  it { should validate_presence_of(:content) }
  it { should validate_length_of(:content).is_at_least(4).is_at_most(16777216) }
end
