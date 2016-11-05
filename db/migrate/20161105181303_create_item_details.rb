class CreateItemDetails < ActiveRecord::Migration
  def change
    create_table :item_details do |t|
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
