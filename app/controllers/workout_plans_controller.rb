class WorkoutPlansController < ApplicationController
    def index
        plans = WorkoutPlan.all
        render json: plans, include: [:exercises]
    end

    def create
        user = User.find(params[:userId])
        name = plan_params[:name]
        user.workout_plans.create(name: name)
        render json: user.workout_plans, include: [:exercises]
    end

    def destroy
        exercise = WorkoutExercise.find_by(exercise_id: params[:exerciseId])
        byebug
        
    end


    private
    def plan_params 
        params.require(:workout_plan).permit(:name)
    end

end