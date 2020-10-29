class RoomsController < ApplicationController

    def index 
        @rooms = Room.all
        render json: @room
    end
end
