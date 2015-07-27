class AddSwitsToSwitSour < ActiveRecord::Migration
  def change
    add_reference :swit_sours, :swit, index: true, foreign_key: true
  end
end
