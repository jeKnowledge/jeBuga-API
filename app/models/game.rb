class Game < ApplicationRecord
    has_one :forum, dependent: :destroy
    has_many :themes, through: :forum, dependent: :destroy
    has_many :posts, through: :themes, dependent: :destroy
    has_many :comments, through: :posts, dependent: :destroy

    validates :name, presence: :true, uniqueness: :true,
      length: { in: 4..255 }
end
