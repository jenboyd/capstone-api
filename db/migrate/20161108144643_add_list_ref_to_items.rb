class AddListRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :list, index: true, foreign_key: true, null: false
  end
end
