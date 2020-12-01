class WorkoutPlansController < ApplicationController
    def index
        plans = WorkoutPlan.all
        render json: plans
    end
end