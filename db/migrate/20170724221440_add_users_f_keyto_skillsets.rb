class AddUsersFKeytoSkillsets < ActiveRecord::Migration
  def change
    add_reference :skillsets, :user, foreign_key: true
  end
end
