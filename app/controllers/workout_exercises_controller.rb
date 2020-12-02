class WorkoutExercisesController < ApplicationController

    def create
        byebug
        user = User.first
        exercise = Exercise.find(workout_params[:id])
    end


    private
    
    def workout_params
        params.require(:workout_exercise).permit(:id)
    end


end