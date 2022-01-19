class SignupsController < ApplicationController

    def create
         #.new : .save
         new_signup = Signup.new( signup_create_params )

         if new_signup.save
             render json: new_signup.activity
         else
             render json: { "errors": new_signup.errors.full_messages }, status: :unprocessable_entity
         end 
    end

    private

    def signup_create_params
        params.require(:signup).permit(:time, :camper_id, :activity_id)
        # params.permit(:name, :age)
    end

end
