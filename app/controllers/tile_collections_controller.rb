class TileCollectionsController < ApplicationController
  def index
    @tile_collections = TileCollection.where(publish: true)
  end

  def show
    @tile_collection = TileCollection.find(params[:id])
  end
end
