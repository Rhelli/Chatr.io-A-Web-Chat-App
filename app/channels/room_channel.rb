class RoomChannel < ApplicationCable::RoomChannel
  def subscribed
    room = Room.find params[:id]
    stream_for room
  end
end