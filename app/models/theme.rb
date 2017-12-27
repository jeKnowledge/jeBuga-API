class Theme < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, through: :posts
    belongs_to :forum
end
