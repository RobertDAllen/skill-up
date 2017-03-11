class RemoveSkillsetsIDfromWorkoutsTable < ActiveRecord::Migration
  def change
        remove_column :workouts, :skillsets_id, :integer
  end
end
