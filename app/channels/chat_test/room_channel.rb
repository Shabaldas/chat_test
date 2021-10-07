module ChatTest
  class RoomChannel < ApplicationCable::Channel
    def subscribed
      stream from "room_channel"
    end

    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
    end
  end
end
