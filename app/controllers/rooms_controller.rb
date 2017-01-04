class RoomsController < ApplicationController

  def update
    @room = Room.find(params[:id])
    @room.update(room_params)
    redirect_to admin_rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:name, :short_description, :description, :amenities)
  end
end
