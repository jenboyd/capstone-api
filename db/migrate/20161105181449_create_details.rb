class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :item_detail, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
