class Forum < ApplicationRecord
    has_many :themes, dependent: :destroy
    has_many :posts, through: :themes
    has_many :comments, through: :posts
    belongs_to :game
end
