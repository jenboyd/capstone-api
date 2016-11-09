class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content, null: false

      t.timestamps null: false
    end
  end
end
