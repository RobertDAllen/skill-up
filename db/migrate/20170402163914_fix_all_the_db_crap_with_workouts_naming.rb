class FixAllTheDbCrapWithWorkoutsNaming < ActiveRecord::Migration
  def change
    rename_column :workouts, :workout, :name
    rename_column :workouts, :duration, :points
    remove_column :workouts, :category
    remove_column :skillsets, :group
  end
end
