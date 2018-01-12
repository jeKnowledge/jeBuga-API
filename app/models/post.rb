class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :theme
  belongs_to :user

  validates :title, presence: :true,
    length: { in: 4..512 }
  validates :content, presence: :true,
    length: { in: 4..16777216 }
end
