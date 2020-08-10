class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :images, dependent: :destroy
  #メモ
  has_many :image_comments, dependent: :destroy
  attachment :profile_image

  validates :name, presence: true
end
