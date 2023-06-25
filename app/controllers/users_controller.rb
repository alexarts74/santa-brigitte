class UsersController < ApplicationController
  def my_account
    @rooms = current_user.rooms
  end

  def contact
  end
end
