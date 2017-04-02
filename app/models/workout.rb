class Workout < ActiveRecord::Base
    belongs_to :skillset
    validates_presence_of :name, :points, :skillset_id
end
