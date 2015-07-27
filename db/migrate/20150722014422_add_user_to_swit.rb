class AddUserToSwit < ActiveRecord::Migration
  def change
    add_reference :swits, :user, index: true, foreign_key: true
  end
end
