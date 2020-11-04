class RoomsController < ApplicationController

    def index 
        @rooms = Room.all
        # byebug
        render json: @rooms
    end

    def show 
        @room = Room.find(params[:id])
        render json: @room
    end


        def new
            @room =Room.new
            render json: @room
        end


        def create
            #  byebug
            # room_params.permit(:user_id, :name)
            @room = Room.create(room_params)
            render json:@room
        end


            # def update
            #     @room.update(room_params)

            # end

            # private
            # def get_user
            #     @user =user.find(params[:id])
            # end


        def room_params
            params.permit(:user_id, :name)
        end
    
end
