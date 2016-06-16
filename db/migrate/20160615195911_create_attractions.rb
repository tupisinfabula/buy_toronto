class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :title
      t.string :location
      t.integer :price

      t.timestamps null: false
    end
  end
end
