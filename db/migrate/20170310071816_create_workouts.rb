class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :workout
      t.string :duration
      t.belongs_to :user
      t.has_one :skill

      t.timestamps null: false
    end
  end
end
