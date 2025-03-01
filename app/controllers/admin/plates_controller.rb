class Admin::PlatesController < ApplicationController
  before_action :set_tile_collection
  before_action :set_plate, only: %i[edit update destroy]

  def index
    @plates = @tile_collection.plates
  end

  def new
    @plate = @tile_collection.plates.new
  end

  def create
    @plate = @tile_collection.plates.new(plate_params)
    if @plate.save
      redirect_to admin_tile_collection_plates_path(@tile_collection), notice: 'Відтінок додано!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plate.update(plate_params)
      redirect_to admin_tile_collection_plates_path(@plate.tile_collection), notice: 'Відтінок оновлено!'
    else
      render :edit
    end
  end

  def destroy
    tile_collection = @plate.tile_collection
    @plate.destroy
    redirect_to admin_tile_collection_plates_path(tile_collection), alert: 'Відтінок видалено!'
  end

  private

  def set_tile_collection
    @tile_collection = TileCollection.find(params[:tile_collection_id])
  end

  def set_plate
    @plate = Plate.find(params[:id])
  end

  def plate_params
    params.require(:plate).permit(:title, :order, :image, :tile_collection_id)
  end
end
