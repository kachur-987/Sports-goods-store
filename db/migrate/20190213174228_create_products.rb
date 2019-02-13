class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :title
      t.integer :price
      t.integer :country_id
      t.string :producer
      t.string :description

      t.timestamps
    end
  end
end
