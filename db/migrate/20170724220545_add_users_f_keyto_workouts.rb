class AddUsersFKeytoWorkouts < ActiveRecord::Migration
  def change
    add_reference :workouts, :user, foreign_key: true
  end
end
