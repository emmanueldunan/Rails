class AddUsersToSwitSour < ActiveRecord::Migration
  def change
    add_reference :swit_sours, :user, index: true, foreign_key: true
  end
end
