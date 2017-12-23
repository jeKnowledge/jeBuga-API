class Game < ApplicationRecord
    has_one :clash_royale, dependent: :destroy
    has_one :forum, through: :clash_royale
    has_many :themes, through: :forum
    has_many :posts, through: :themes
end
