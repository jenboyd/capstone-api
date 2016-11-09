class AddUserRefToLists < ActiveRecord::Migration
  def change
    add_reference :lists, :user, index: true, foreign_key: true, null: false
  end
end
