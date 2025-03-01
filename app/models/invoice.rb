class Invoice < ApplicationRecord
  belongs_to :tile_collection
  belongs_to :plate

  validates :name, :phone, presence: true
end
