class ClashRoyale < ApplicationRecord
    has_one :forum, dependent: :destroy
    has_many :themes, through: :forum
    has_many :posts, through: :themes
    belongs_to :game
end
