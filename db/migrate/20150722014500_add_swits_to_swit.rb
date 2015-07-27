class AddSwitsToSwit < ActiveRecord::Migration
  def change
    add_reference :swits, :swit, index: true, foreign_key: true
  end
end
