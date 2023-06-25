class UsersController < ApplicationController
  def my_account
    @rooms = current_user.rooms
  end
end
