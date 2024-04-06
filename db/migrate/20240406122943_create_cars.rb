class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.integer :year
      t.integer :km
      t.text :description
      t.integer :price_per_day
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
