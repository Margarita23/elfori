class PlatesController < ApplicationController
  before_action :set_tile_collection

  def index
    @plates = @tile_collection.plates
    @invoice = Invoice.new
  end

  private

  def set_tile_collection
    @tile_collection = TileCollection.find(params[:tile_collection_id])
  end

end
