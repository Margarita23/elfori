class Admin::TileCollectionsController < ApplicationController
  before_action :set_tile_collection, only: %i[show edit update destroy]

  def index
    @tile_collections = TileCollection.all
  end

  def show
  end

  def new
    @tile_collection = TileCollection.new
  end

  def edit
  end

  def create
    @tile_collection = TileCollection.new(tile_collection_params)
    if @tile_collection.save
      redirect_to admin_tile_collections_path, notice: 'Колекція створена!'
    else
      render :new
    end
  end

  def update
    if @tile_collection.update(tile_collection_params)
      flash[:notice] = "Колекція плитки оновлена."
      redirect_to admin_tile_collections_path, notice: 'Колекція оновлена!'
    else
      flash[:notice] = "Колекція плитки не оновлена."
      render :edit
    end
  end

  def destroy
    @tile_collection.destroy
    redirect_to admin_tile_collections_path, alert: 'Колекція видалена!'
  end

  private

  def set_tile_collection
    @tile_collection = TileCollection.find(params[:id])
  end

  def tile_collection_params
    params.require(:tile_collection).permit(:title, :description, :publish)
  end

end
