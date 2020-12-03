class WorkoutExercisesController < ApplicationController

    def create
        
        exercise = Exercise.find(params[:exercise_id])
        plan = WorkoutPlan.find_by(name: params[:name])
        plan.workout_exercises.create(exercise_id: exercise.id)
        render json: plan, include: [:workout_exercises]
        
    end


    # private
    
    # def workout_params
    #     params.require(:workout_exercise).permit(:id)
    # end


end