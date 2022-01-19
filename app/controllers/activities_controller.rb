class ActivitiesController < ApplicationController
    
    #GET /activities
    def index
        render json: Activity.all
    end

    #DELETE /activities/:id
    def destroy
        activity_to_destroy = Activity.find_by( id: params[:id])

        if activity_to_destroy
            # activity_to_destroy.signups.destroy_all
            activity_to_destroy.destroy
            # render json: { message: "Delete Successful!"}, status: :ok
            # render json: {}, status: :no_content
            head :no_content
        else 
            render json: { "error": "Activity not found" }, status: :not_found
        end 
    end

end
