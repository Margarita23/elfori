class TileCollection < ApplicationRecord
	has_many :plates, dependent: :destroy

  has_many_attached :images

  validates :title, presence: true
end
