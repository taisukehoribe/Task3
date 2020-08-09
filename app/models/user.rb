class User < ApplicationRecord

  attachment :profile_image

  has_many :books, dependent: :destroy
#追加
  validates :name, presence: true, length: {minimum:2, maximum: 20}

  validates :introduction, length: { maximum: 50}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

end
