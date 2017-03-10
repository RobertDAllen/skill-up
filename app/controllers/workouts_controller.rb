class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show]
    def index
    end
    
    def show
    end
    
    def new
        @workout = Workout.new
    end
    
    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to @workout
        else
            render 'new'
        end
    end
    
    
    private
    
    def workout_params
        params.require(:workout).permit(:date, :workout, :duration)
    end
    
    def find_workout
        @workout = Workout.find(params[:id])
    end

end
