class AddUserRefToParties < ActiveRecord::Migration
  def change
    add_reference :parties, :user, index: true, foreign_key: true, null: false
  end
end
