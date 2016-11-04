class AddPartytRefToLists < ActiveRecord::Migration
  def change
    add_reference :lists, :party, index: true, foreign_key: true
  end
end
