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
            @room = Room.create(room_params)
            render json:@room
        end


        def update
            # byebug
            @room=Room.find(params[:id])
            @room.update(user_id: params[:user_id], name: params[:name])
            render json:@room

        end


            def destroy
                @room=Room.find(params[:id])
                @room.destroy
                render json:@room
            end


            

            private
            def get_room
                @rooms =room.find(params[:id])
            end


        def room_params
            params.permit(:user_id, :name)
        end
    
end
