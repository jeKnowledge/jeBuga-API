class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: :true, uniqueness: :true,
    length: { in: 4..255 }

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
