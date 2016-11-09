class AddUserRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :user, index: true, foreign_key: true, null: false
  end
end
