class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :content, presence: :true,
    length: { in: 4..16777216 }
end
