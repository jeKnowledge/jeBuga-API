class Theme < ApplicationRecord
    has_many :posts, dependent: :destroy
    belongs_to :forum
end
