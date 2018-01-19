class Theme < ApplicationRecord
    belongs_to :forum
    belongs_to :user
    has_many :comments, through: :posts, dependent: :destroy
    has_many :posts, dependent: :destroy

    validates :name, presence: :true, uniqueness: :true,
      length: { in: 4..255 }
end
