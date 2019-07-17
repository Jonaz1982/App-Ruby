class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.string :color
      t.string :size
      t.float :unit_price

      t.timestamps
    end
  end
end
