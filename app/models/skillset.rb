class Skillset < ActiveRecord::Base
    has_many :workouts
    validates_presence_of :name
    def total_points
        return workouts.sum("points")
    end
    def levels 
        return (total_points / 100 ).to_i 
    end
end
