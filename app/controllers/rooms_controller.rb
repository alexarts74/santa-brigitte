class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show]

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end
end
