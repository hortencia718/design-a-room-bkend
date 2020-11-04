class CollectionsController < ApplicationController

    def index
        @collections = Collection.all 
        render json: @collections
    end


    # def show
    #     @collections = Collection.show
    #     render json: @collections
    # end




end
