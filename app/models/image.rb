class Image < ApplicationRecord
	belongs_to :user
	attachment :image

	#バリデーション
	validates :title, presence: true
	validates :image, presence: true
end
