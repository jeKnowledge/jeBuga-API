require 'rails_helper'

RSpec.describe Forum, type: :model do
  # Association test
  it { should have_many(:themes).dependent(:destroy) }
  it { should have_many(:posts).through(:themes).dependent(:destroy) }
  it { should have_many(:comments).through(:posts).dependent(:destroy) }
  it { should belong_to(:game) }
end
