class AddPartyRefToLists < ActiveRecord::Migration
  def change
    add_reference :lists, :party, index: true, foreign_key: true, null: false
  end
end
