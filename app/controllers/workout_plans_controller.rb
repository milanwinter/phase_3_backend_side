class WorkoutPlansController < ApplicationController
    def index
        plans = WorkoutPlan.all
        render json: plans
    end

    def create
        user = User.first
        name = plan_params[:name]
        user.workout_plans.create(name: name)
        
    end

    private
    def plan_params 
        params.require(:workout_plan).permit(:name)
    end

end