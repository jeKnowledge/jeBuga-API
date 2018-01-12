class Game < ApplicationRecord
    has_one :forum, dependent: :destroy
    has_many :themes, through: :forum
    has_many :posts, through: :themes
    has_many :comments, through: :posts

    validates :name, presence: :true, uniqueness: :true,
      length: { in: 4..255 }
end
