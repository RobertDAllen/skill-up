class AdjustWorkoutsSchemaForSkillsetId < ActiveRecord::Migration
  def change
    add_column :workouts, :skillset_id, :integer
  end
end
