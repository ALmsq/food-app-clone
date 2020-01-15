class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :price
      t.integer :rating
      t.string :categories
      t.decimal :long
      t.decimal :lat
      t.decimal :distance

      t.timestamps
    end
  end
end
