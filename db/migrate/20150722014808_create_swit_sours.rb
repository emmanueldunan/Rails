class CreateSwitSours < ActiveRecord::Migration
  def change
    create_table :swit_sours do |t|
      t.integer :rating

      t.timestamps null: false
    end
  end
end
