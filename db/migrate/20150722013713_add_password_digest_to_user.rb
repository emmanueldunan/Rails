class AddPasswordDigestToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_diget, :string
  end
end
