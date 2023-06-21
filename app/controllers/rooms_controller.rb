class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show], raise: false

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    room.user = current_user
    if @clothe.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to rooms_path, notice: "Chambre modifiée"
    else
      render :edit
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :price, :image, :description)
  end
end
