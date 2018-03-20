class WagonsController < ApplicationController
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]

  def index
    @wagons = Wagon.all
  end

  def new
    @wagon = Wagon.new
  end

  def show
  end

  def edit
  end

  def destroy
    @wagon.destroy
    respond_to do |format|
      format.html { redirect_to wagons_url, notice: 'Wagon was successfully deleted.' }
    end
  end

  def update
    respond_to do |format|
      if @wagon.update(wagon_params)
        format.html { redirect_to @wagon, notice: 'Wagon was successfully edited.' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    #@wagon = Object.const_get(wagon_params[:type]).new(wagon_params)
    #wag = Object.const_get(wagon_params[:type])
    respond_to do |format|
      if @wagon.save
        format.html { redirect_to 'wagon', wagon: @wagon, notice: 'New wagon was created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  def wagon_params
    params.require(:wagon).permit(:top_seats, :side_bottom_seats, :side_top_seats, :bottom_seats,
                                  :seat_places, :type, :train_id)
  end
end