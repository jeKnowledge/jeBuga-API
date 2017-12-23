class Forum < ApplicationRecord
    has_many :themes, dependent: :destroy
    has_many :posts, through: :themes
    belongs_to :clash_royale
end
