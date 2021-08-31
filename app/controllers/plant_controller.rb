class PlantController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end 

    def show
        plant = Plant.find_by(id: params[:id])
        if Plant
            render json: plant
        else
            render json: {error: "No Plant Found"}, status: not_found
        end
    end

    def create
        plant = Plant.create(params.permit(:name, :image, :price)
        render json: bird, status: :created
    end
end
