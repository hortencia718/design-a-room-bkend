class CollectionsController < ApplicationController

    def index
        @collections = Collection.all 
        render json: @collections
    end


    def show
        # byebug
        @collections = Collection.show
        render json: @collections
    end

    def create
        @collection = Collection.create!(collection_params)
        render json: @collections 
    end

    def update
        @collection= Collection.find(params[:id])
        render json: @collection
    end

    def destroy
        @collection = Collection.find(params[:id])
        @collection.destroy
        render json: @collection
    end


    def collection_params
        params.permit(:color_id, :room_id)
    end




end
