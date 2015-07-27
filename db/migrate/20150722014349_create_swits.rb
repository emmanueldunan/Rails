class CreateSwits < ActiveRecord::Migration
  def change
    create_table :swits do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
