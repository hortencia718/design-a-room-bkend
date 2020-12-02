class ColorsController < ApplicationController

    def index
        @colors = Color.all
        render json:@colors
        
    end

        def show
            @color =Color.find(params[:id])
            render json: @color
        end


        def new
            @color = Color.new
            render json: @color
        end

        def create
            # byebug
            @color = Color.create!(colors_params)
            render json: @color 
        end


        def colors_params
            params.permit(:hex_number)
        end


        def update
            color = Color.find(params[:id])
            @color.update(hex_number: params[:id])
            render json: @color
        end

        # def destroy
        # end

        private
        def get_color
            colors=color.find(params[:id])
        end

        def colors_params
            params.permit(:id,:hex_number)
        end

end
