class CleanupWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :category_id, :integer
    change_column :workouts, :duration, :integer
    remove_column :workouts, :category, :string
    
  end
end
