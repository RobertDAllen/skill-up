class SkillsetsController < ApplicationController
    def create
        @workout = Workout.find(params[:workout_id])
        @skillset = @workout.skillsets.create(params[:skillset].permit(:name, :group))
        
        redirect_to workout_path(@workout)
    end
end
