class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.string :name
      t.string :group

      t.timestamps null: false
    end
    change_table :workouts do |t|
      t.references :skillsets
    end
  end
end
