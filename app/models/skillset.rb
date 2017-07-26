class Skillset < ActiveRecord::Base
    has_many :workouts
    validates_presence_of :name
    belongs_to :user 
    validates_presence_of :user_id
    def total_points
        return workouts.sum("points")
    end
    def levels 
        return (total_points / 60 ).to_i 
    end
end
