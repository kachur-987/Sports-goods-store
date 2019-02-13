class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :title
      t.integer :product_id

      t.timestamps
    end
  end
end
