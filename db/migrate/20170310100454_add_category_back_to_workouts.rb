class AddCategoryBackToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :category, :string
  end
end
