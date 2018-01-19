require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  it { should have_many(:posts).dependent(:destroy) }
  it { should have_many(:comments).dependent(:destroy) }

  # Validation test
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_length_of(:username).is_at_least(4).is_at_most(255) }
end
