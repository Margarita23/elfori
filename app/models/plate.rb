class Plate < ApplicationRecord
  belongs_to :tile_collection

  has_one_attached :image

  validates :title, presence: true
end
