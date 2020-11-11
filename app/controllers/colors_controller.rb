class ColorsController < ApplicationController

    def index
        @colors = Color.all
        render json:@colors
        
    end

        # def show
        #     @color =Color.find(params[:id])
        #     render json: @colors
        # end


        # def new
        #     @colors = Color.new
        #     render json: @colors
        # end

        def create
            # byebug
            @color = Color.create!(colors_params)
            render json: @color 
        end


        def colors_params
            params.permit(:hex_number)
        end


        # def update
        #     color = Color.update()
        #     render json: @color
        # end

end
