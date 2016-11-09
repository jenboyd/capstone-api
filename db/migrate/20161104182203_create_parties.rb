class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name, null: false
      t.date :date
      t.string :location

      t.timestamps null: false
    end
  end
end
