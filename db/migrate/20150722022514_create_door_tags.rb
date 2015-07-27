class CreateDoorTags < ActiveRecord::Migration
  def change
    create_table :door_tags do |t|
      t.string :tag

      t.timestamps null: false
    end
  end
end
