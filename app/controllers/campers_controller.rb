class CampersController < ApplicationController
    # Get to /campers
    def index
        campers = Camper.all
        render json: campers
    end

    # GET /campers/:id
    def show 
        camper = Camper.find_by( id: params[:id] )

        if camper # camper exists! :)
            render json: camper, serializer: CamperShowSerializer
        else
            render json: { "error": "Camper not found" }, status: :unprocessable_entity
        end
    end 

    #### POST /campers
    def create
        #.create : .valid?
        #     new_camper = Camper.create( camper_create_params )

        #     if new_camper.valid?
        #         render json: new_camper
        #     else
        #         render json: { "errors": new_camper.errors.full_messages }, status: :unprocessable_entity
        #     end 

        #.new : .save
            new_camper = Camper.new( camper_create_params )

            if new_camper.save
                render json: new_camper
            else
                render json: { "errors": new_camper.errors.full_messages }, status: :unprocessable_entity
            end 

    end

    private

    def camper_create_params
        # params.require(:camper).permit(:name, :age)
        params.permit(:name, :age)
    end

end
