class Skillset < ActiveRecord::Base
    has_many :workouts
    validates_presence_of :name
    def total_points
        sum = 0  
        workouts.each do |w|
            sum += w.points
        end
        return sum

    end
end
