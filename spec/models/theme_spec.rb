require 'rails_helper'

RSpec.describe Theme, type: :model do
  # Association test
  it { should have_many(:posts).dependent(:destroy) }
  it { should have_many(:comments).through(:posts).dependent(:destroy) }
  it { should belong_to(:forum) }
  it { should belong_to(:user) }

  # Validation test
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_length_of(:name).is_at_least(4).is_at_most(255) }

end
