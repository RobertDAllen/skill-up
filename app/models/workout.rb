class Workout < ActiveRecord::Base
    belongs_to :skillset
    validates_presence_of :name, :points, :skillset_id
    belongs_to :user
    validates_presence_of :user_id
end
