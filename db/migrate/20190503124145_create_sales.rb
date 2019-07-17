class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :client_id
      t.jsonb :product_ids

      t.timestamps
    end
  end
end
