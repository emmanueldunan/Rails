class CreateDestroys < ActiveRecord::Migration
  def change
    create_table :destroys do |t|
      t.string :comment

      t.timestamps null: false
    end
  end
end
