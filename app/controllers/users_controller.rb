class UsersController < ApplicationController
  def my_account
    @rooms = current_user.rooms
  end

  def dog_params
    params.require(:user).permit(:firstname, :lastname, :photo)
  end
end
