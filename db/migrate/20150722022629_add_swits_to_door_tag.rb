class AddSwitsToDoorTag < ActiveRecord::Migration
  def change
    add_reference :door_tags, :swit, index: true, foreign_key: true
  end
end
