class RoomsController < ApplicationController
  # The exclamation mark is a convention used by Devise to indicate that this method may perform a forceful action
  before_action :authenticate_user!
  def index
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)
  end
end
