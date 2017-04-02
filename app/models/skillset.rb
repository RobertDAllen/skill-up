class Skillset < ActiveRecord::Base
    has_many :workouts
    validates_presence_of :name
    def total_points
        return workouts.sum("points")
    end
    
end
