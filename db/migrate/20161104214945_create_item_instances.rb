class CreateItemInstances < ActiveRecord::Migration
  def change
    create_table :item_instances do |t|
      t.references :list, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
