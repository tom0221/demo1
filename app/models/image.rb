class Image < ApplicationRecord
	belongs_to :user
	attachment :image
	#メモ
	has_many :image_comments, dependent: :destroy

	#バリデーション
	validates :title, presence: true
	validates :image, presence: true
end
