class ColorsController < ApplicationController

    def index
        @colors = Color.all
        render json:@colors
        
    end

        def show
            @colors =Color.all
            render json: @colors
        end


        # def new
        #     @colors = Color.new
        #     render json: @colors
        # end

        # def create
        #     @colors = Color.create!(user_params)
        #     render json: @color 
        # end

        # def update
        #     color = Color.update()
        #     render json: @color
        # end

end
