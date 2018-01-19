class Forum < ApplicationRecord
    has_many :themes, dependent: :destroy
    has_many :posts, through: :themes, dependent: :destroy
    has_many :comments, through: :posts, dependent: :destroy
    belongs_to :game
end
